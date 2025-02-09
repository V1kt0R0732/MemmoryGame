<?php $__env->startSection('content'); ?>

<div class="bg-light d-flex align-items-center justify-content-center fx-column vh-100">

    <div class="card shadow-sm p-4" style="max-width: 400px; width: 100%;">
        <h1 class="text-center mb-4 text-primary fs-4">Додавання Малюнків</h1>
        <form action="<?php echo e(route('image.index')); ?>" method="post" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>
            <div class="mb-3">
                <label for="image" class="form-label text-muted">Оберіть файли:</label>
                <input type="file" name="image[]" id="image" multiple class="form-control">
            </div>
            <button type="submit" name="send" value="add" class="btn btn-primary w-100">Додати Малюнки</button>
        </form>
        <h1 class="text-center mb-4 text-success fs-4">Почати Гру</h1>
        <form action="<?php echo e(route('image.refresh')); ?>" method="post">
            <?php echo csrf_field(); ?>
            <div class="mb-3">
                <label for="name" class="form-label text-muted">Ваш псевдонім:</label>
                <input type="text" name="playerName" id="name" placeholder="Your NickName" class="form-control">
            </div>
            <input type="submit" name="send2" value="До гри" class="btn btn-success w-100">
        </form>
        <?php if(session('success')): ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert" style="max-width: 400px; width: 100%;">
                <strong>Успіх!</strong> <?php echo e(session('success')); ?>

                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <?php endif; ?>
        <?php if(session('error')): ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert" style="max-width: 400px; width: 100%;">
                <strong>Помилка!</strong> <?php echo e(session('error')); ?>

                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <?php endif; ?>
    </div>
</div>




<?php echo $__env->make('layouts.layout', ['title'=>'Додавання Малюнків'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\OSPanel\domains\ImageGame\resources\views/index.blade.php ENDPATH**/ ?>