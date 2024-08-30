//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    //var dinero = 0
    //var deuda = 0
    var saldo = 0

    method sueldo(){    //getter
        return sueldo
    }

    method sueldo(_sueldo){ //setter. Cambia el valor de la variable
        sueldo = _sueldo
    }
    
    /* MALA FORMA, pero anda :D
    method cobrarSueldo(){

        if(sueldo > deuda){
            dinero = sueldo - deuda
            deuda = 0
        } else{
            deuda = deuda - sueldo
            dinero = 0
        }

    }
    method gastar(cuanto){
        deuda += cuanto - dinero
        if(deuda > sueldo){
            dinero = 0
        }
    }
    method deuda(){
        return deuda
    }

    method dinero(){
        return dinero
    }
    */

    method cobrarSueldo(){
        saldo +=sueldo
    }

    method gastar(cantidad){
        saldo -= cantidad
    }

    method deuda(){
        return saldo.min(0).abs()
    }

    method dinero(){
        return saldo.max(0)
    }


}

object baigorria{
    var precioEmpanada = 15
    var cantEmpanadasVendidas = 0
    var totalCobrado = 0

    method vender(empanadas) {
        cantEmpanadasVendidas += empanadas
    }

    method sueldo(){
        return precioEmpanada * cantEmpanadasVendidas
    }

    method totalCobrado(){
        return totalCobrado
    }

    method cobrarSueldo(){
        totalCobrado += self.sueldo()
        cantEmpanadasVendidas = 0
    }

}

object gimenez{
    var fondo = 300000

    method fondo(){ //getter
        return fondo
    }

    method pagarSueldo(empleado){
        fondo -= empleado.sueldo()
        empleado.cobrarSueldo()
    }
}