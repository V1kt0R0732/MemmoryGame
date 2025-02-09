<?php $__env->startSection('content'); ?>







<div class="hud"><b>Бали: <?php echo e($points != null ? $points : 0); ?></b><b>Лишилось: <?php echo e($timeLeft); ?></b></div>
<div class="image-wrapper" id="img2">
    <?php for($i = 0; $i < 16; $i++): ?>
        <?php if( $fakeArray[$i] == "/storage/images/noPhoto.png"): ?>
            <a href="<?php echo e(route('image.start',['id'=>$i])); ?>"><img src="<?php echo e($fakeArray[$i]); ?>" alt="No photo" class="image-item"></a>
        <?php else: ?>
            <img src="<?php echo e($fakeArray[$i]); ?>" alt="No photo" class="image-item">
        <?php endif; ?>
    <?php endfor; ?>
</div>


<?php echo $__env->make('layouts.layout', ['title'=>'Гра'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\OSPanel\domains\ImageGame\resources\views/game.blade.php ENDPATH**/ ?>