class AttendanceMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'

    def attendance_email(admin, user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 
      @admin = admin
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://monsite.fr/login' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @admin.email, subject: 'Tu as un nouveau participant !') 
    end
end
