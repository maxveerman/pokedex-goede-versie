<!DOCTYPE html>
<html>
<head>
    <title>Example</title>
</head>
<style>
    .container{
        width: 100%;
        height: auto;
    }

    .line{
        border-bottom:1px solid red;
    }

    .name{
        text-align: center;
    }

</style>
<body>
<div class="container">
    <div class="name">

        <h2>PDF {{$pokemon->name }}</h2>
        <div class="line"></div>
        <p>
            <?php
                if(isset($pokemon->getType1->name) && isset($pokemon->getType2->name)){

                }else if(isset($pokemon->getType1->name) && !isset($pokemon->getType2->name)){
                    echo $pokemon->getType1->name;
                }
            ?>
        </p>
    </div>

    <div class="image">
        <h2>Image {{$pokemon->name }}</h2>
        <?php
            echo '<img src="http://localhost/pokedex/public/images/'.$pokemon->name.'/'.$pokemon->name.'.png">';
        ?>

    </div>

    <div class="description">
        <h2>Description</h2>
        <p>{{ $pokemon->description }}</p>
    </div>
</div>


</body>
</html>