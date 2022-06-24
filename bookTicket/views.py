from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.contrib.auth.forms import PasswordChangeForm
from django.shortcuts import redirect
from django.contrib.auth import update_session_auth_hash
from .models import trainDetails
from .models import ticketDetail
from django.contrib import messages
from datetime import date
import reportlab
import io
from django.http import FileResponse
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import letter
# 
# from io import BytesIO
# from django.http import HttpResponse
# from django.template.loader import get_template
# from xhtml2pdf import pisa
#

# def homePage(request):
    # return HttpResponse("abcdefgh")
    # context = {}
    # return render(request, 'bookticket/home.html', context)

def search(request):
    if request.user.is_authenticated:
        if request.method == 'POST':
            arr = request.POST['from']
            print("arr : ", arr)
            request.session['arrival'] = arr
            dest = request.POST['to']
            request.session['destination'] = dest
            date = request.POST['traveldt']
            request.session['travelDate'] = date
            # ticketDetailObj = ticketDetail()
        #     all_train_details = trainDetails.objects.all()
        #     all_train_details = trainDetails.objects.filter(arrival=arr).filter(destination=dest)
        #     print(all_train_details)
        #     if all_train_details:
        #         context = {'arrival': arr, 'destination': dest, 'all_train_details': all_train_details}
        return render(request, 'bookticket/search.html')
        #     else:
        #         messages.info(request,"not found")
        #         redirect ('/search')
        # else:
        #     context = {}
        #     return render(request, 'bookticket/search.html', context)
    else:
        return redirect('/login')

def booktrain(request):
    if request.user.is_authenticated:
        if request.method == 'POST':
            # -------------------------------------
            if 'arrival' in request.session:
                arr = request.session.get('arrival')
            else:
                arr = request.POST['from']
                request.session['arrival'] = arr
                # 
            if 'destination' in request.session:
                dest = request.session.get('destination')
            else:
                dest = request.POST['to']
                request.session['destination'] = dest
                # 
            if 'travelDate' in request.session:
                date = request.session.get('travelDate')
            else:
                date = request.POST['traveldt']
                request.session['travelDate'] = date
            # -------------------------------------
            all_train_details = trainDetails.objects.all()
            all_train_details = trainDetails.objects.filter(arrival=arr).filter(destination=dest)
            user_name = request.user.username
            for train in all_train_details:
                train_ID = train.trainID
                train_fare = train.rent
            # if seat is already booked and user perss "ADD" this will be printed
            all_ticket_details = ticketDetail.objects.all()
            all_ticket_details = ticketDetail.objects.filter(trainID=train_ID).filter(journeyDate=date).filter(userName=user_name)
            total_fare = 0
            if 'pnm' in request.POST:
                passanger_name = request.POST['pnm']
                passanger_age = request.POST['pAge']
                passanger_gender = request.POST['gender']
                passanger_seatNo = request.POST['sno']
                # 
                
                #
                checktrainSeat = trainDetails.objects.all()
                checktrainSeat = trainDetails.objects.filter(trainID=train_ID)
                all_tic_details = ticketDetail.objects.all()
                all_tic_details = ticketDetail.objects.filter(trainID=train_ID).filter(journeyDate=date).filter(userName=user_name)
                totalFare = 0
                for check in checktrainSeat:
                    test_str = (check.bookedSeat)
                    if passanger_seatNo in test_str:
                        # print ("Yes, seat booked")
                        # if seat is already booked and user perss "ADD", total_fare will be unchanged
                        for fare in all_tic_details:
                            total_fare = total_fare + fare.totalFare
                        messages.error(request, 'seat is already Booked, Choose another Seat')
                    else : 
                        # print ("No, seat not booked")
                        updatetrainDetails = trainDetails.objects.all()
                        updatetrainDetails = trainDetails.objects.filter(trainID=train_ID)
                        # will update booked seat in database with particular trainID
                        for update in updatetrainDetails:
                            dbbookedSeat = (update.bookedSeat)
                            updatedbookedSeat = dbbookedSeat+passanger_seatNo
                            print(updatedbookedSeat)
                            update.bookedSeat = updatedbookedSeat
                            update.save()
                        # if everything is ok, seat is not booked than save ticket
                        ticketDetailObj = ticketDetail(userName=user_name, trainID=train_ID, journeyDate=date, totalFare=train_fare, seatNo=passanger_seatNo, passName=passanger_name, passAge=passanger_age, PassGender=passanger_gender)
                        ticketDetailObj.save()
                        # if everything is ok, seat is not booked than update totalFare
                        for fare in all_tic_details:
                            totalFare = totalFare + fare.totalFare
                        if all_train_details:
                            context = {'arrival': arr, 'destination': dest, 'train_details': all_train_details, 'ticDetails':all_tic_details, 'totalFare':totalFare}
                            return render(request, 'bookticket/booktrain.html', context)
            if all_train_details:
                context = {'arrival': arr, 'destination': dest, 'train_details': all_train_details, 'ticDetails':all_ticket_details, 'totalFare':total_fare }
                return render(request, 'bookticket/booktrain.html', context)
            else:
                messages.info(request,"not found")
                redirect ('/search')
        else:
            context = {}
            return render(request, 'bookticket/booktrain.html', context)
    else:
        return redirect('/login')  


def booking(request):
    if request.user.is_authenticated:
        user_name = request.user.username
        today = date.today()
        oldTickets = ticketDetail.objects.all()
        oldTickets = ticketDetail.objects.filter(userName=user_name).filter(journeyDate__lt=today)
        newTickets = ticketDetail.objects.all()
        newTickets = ticketDetail.objects.filter(userName=user_name).filter(journeyDate__gt=today)
        context = {'oldticket':oldTickets, 'newticket':newTickets}
        return render(request, 'bookticket/myBookings.html', context)
    else:
        return redirect('/login')

def dltTicket(request):
    if request.user.is_authenticated:
        if request.method == "GET":
            ticID = request.GET['ticketID']
            ticketDetail.objects.filter(ticketID=ticID).delete()
            return redirect('/myBooking')
    else:
        return redirect('/login')

def chgpass(request):
    if request.user.is_authenticated:
        if request.method == "POST":
            form = PasswordChangeForm(user=request.user, data=request.POST)
            if form.is_valid():
                form.save()
                update_session_auth_hash(request, form.user)
                return redirect('/')
        else:
            form = PasswordChangeForm(user=request.user)
        context = {'form':form}
        return render(request, 'bookticket/changepass.html', context)
    else:
        return redirect('/login')

def print_pdf(request):
    if request.user.is_authenticated:
        if request.method == "GET":
            ticID = request.GET['ticketID']
            tickets = ticketDetail.objects.all()
            tickets = ticketDetail.objects.filter(ticketID=ticID)
            for tic in tickets:
                ticID = "> Ticket ID : "+str(tic.ticketID)
                bookedBy = "> Booked By : "+tic.userName
                trainID = "> train ID : "+str(tic.trainID)
                date = "> Journey Date : "+str(tic.journeyDate)
                fare = "> Journey Fare : "+str(tic.totalFare)
                seatno = "> Booked Seat no : "+tic.seatNo
                pname = "> Passanger Name : "+tic.passName
                pAge = "> Passanger Age : "+str(tic.passAge)
                pgender = "> Passanger Gender : "+tic.PassGender
            buffer = io.BytesIO()
            p = canvas.Canvas(buffer, pagesize=letter)
            p.setFont('Helvetica', 18)
            p.setTitle("Booking Details")
            p.drawCentredString(300, 750, "Online train Ticket Booking Details")
            p.drawString(100,703,ticID)
            p.drawString(100,684,trainID)
            p.drawString(100,665,bookedBy)
            p.drawString(100,646,pname)
            p.drawString(100,627,pAge)
            p.drawString(100,608,pgender)
            p.drawString(100,589,date)
            p.drawString(100,570,seatno)
            p.drawString(100,551,fare)
            p.showPage()
            p.save()
            buffer.seek(0)
            return FileResponse(buffer, as_attachment=True, filename='hello.pdf')
    else:
        return redirect('/login')

def payFare(request):
    if request.user.is_authenticated:
        if request.method == "GET":
            totalFare = request.GET['fare']
            context = {'fare':totalFare}
            return render(request, 'bookticket/payment.html', context)
    else:
        return redirect('/login')


def delete_session(request):
    try:
        del request.session['arrival']
        del request.session['destination']
        del request.session['travelDate']
    except:
        print("Can't delete session")
        pass