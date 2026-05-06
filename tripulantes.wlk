import nave.*

object neo {

    var energia = 100

    method esElElegido(){

        return true
    }

    method saltar(){

        energia = energia / 2

    }

    method vitalidad(){

        return energia / 10

    }

}

object morfeo {

    var vitalidad = 8
    var descansado = true

    method esElElegido(){

        return false

    }

    method saltar(){

        descansado = not descansado
        vitalidad = vitalidad - 1
    
    }

    method saltarDeAlegria(){
        
    }

    method vitalidad(){

        return vitalidad
    
    }

}

object trinity {

    method esElElegido(){

        return false

    }

    method saltarDeAlegria(){

    }

    method saltar(){

    }

    method vitalidad(){

        return 0

    }

}