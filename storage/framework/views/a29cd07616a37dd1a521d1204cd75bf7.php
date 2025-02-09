<?php $__env->startSection('content'); ?>


<div class="container text-center">
    <h2>Вітаю, Гру завершено</h2>
    <h3>Час вичерпано</h3>
    <h4>Бали: <?php echo e($points != null ? $points : 0); ?></h4>
    <div class="d-flex hud">
        <a href="/" class="btn btn-primary" style="margin-right: 60px">Головна</a>
        <form style="margin: 0 0 0 35px" method="post" action="<?php echo e(route('image.delete', ['playerName'=>$playerName])); ?>" onsubmit="if(confirm('Ви дійсно хочите видалити весь свій проогресс?')){return true}else{return false}">
            <?php echo csrf_field(); ?>
            <?php echo method_field('DELETE'); ?>
            <input type="submit" name="delete" value="Видалити рекорд" class="btn btn-danger">
        </form>

        <a href="/refresh" class="btn btn-primary" style="margin-left: 60px">Грати ще раз</a>
    </div>
</div>

<div class="hud">
    <div class="container mt-4">
        <h2 class="text-center">Таблица победителей</h2>
        <div class="table-responsive" style="max-height: 400px; overflow-y: auto;">
            <table class="table table-striped table-bordered text-center">
                <thead class="table-info">
                    <tr>
                        <th>Місце</th>
                        <th>Ім'я</th>
                        <th>Очки</th>
                    </tr>
                </thead>
                <tbody>
                <?php $__currentLoopData = $players; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $player): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr <?php if($playerName == $player->name): ?> class="table-warning" <?php endif; ?> >
                        <td>#<?php echo e($loop->iteration); ?></td>
                        <td><?php echo e($player->name); ?></td>
                        <td><?php echo e($player->points); ?></td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
        </div>
    </div>
</div>





<?php echo $__env->make('layouts.layout', ['title'=>'Кінець гри'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\OSPanel\domains\ImageGame\resources\views/end.blade.php ENDPATH**/ ?>