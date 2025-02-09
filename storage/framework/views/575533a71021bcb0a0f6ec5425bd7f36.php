<?php $__env->startSection('content'); ?>

    <div class="image-wrapper">
        <?php $__currentLoopData = $array; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <img src="<?php echo e($image); ?>" alt="No photo" class="image-item" >
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>

<?php echo $__env->make('layouts.layout', ['title'=>'Гра'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\OSPanel\domains\ImageGame\resources\views/show.blade.php ENDPATH**/ ?>