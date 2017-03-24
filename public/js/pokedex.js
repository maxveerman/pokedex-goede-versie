/**
 * Created by Max on 6-4-2016.
 */
$(document).ready(function(){

    $('.type2').hide();

    if($('.type1').change(function(){
            $('.type2').fadeIn(1000);
    }));
});