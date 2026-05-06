import tripulantes.*

object nave{

    const pasajeros = #{}

    method subirALaNave(unPasajero){

        pasajeros.add(unPasajero)

    }

    method bajarseDeLaNave(unPasajero){

            pasajeros.remove(unPasajero)

    }
    
    method contarPasajeros(){

        return pasajeros.size()

    }

    method pasajeroDeMayorVitalidad(){

        return pasajeros.max({p => p.vitalidad()})

    }

    method pasajeroDeMenorVitalidad(){

        return pasajeros.min({p => p.vitalidad()})

    }

    method estaEquilibrada(){

        if (pasajeros.isEmpty()){

            return true

        }

        else {

        return self.pasajeroDeMayorVitalidad().vitalidad() <= self.pasajeroDeMenorVitalidad().vitalidad()*2

        }

    }

    method elElegidoEsta(){

        return pasajeros.any({p => p.esElElegido()})

    }

    method chocar(){

        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()

    }

    method acelerar(){

    self.pasajerosNoElegidos().forEach({p => p.saltarDeAlegria()})
    pasajeros.removeAll(self.pasajerosElegidos())

}

    method pasajerosNoElegidos(){

        return pasajeros.filter({p => not p.esElElegido()})

    }

    method pasajerosElegidos(){

        return pasajeros.filter({p => p.esElElegido()})

    }

}