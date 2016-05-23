<?php

use Illuminate\Database\Seeder;

class EntrustTablesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
     public function run()
     {
         /**
          * clear all data authorize
          */
         \DB::statement('SET FOREIGN_KEY_CHECKS=0;');
         \DB::statement("TRUNCATE TABLE permission_role");
         \DB::statement("TRUNCATE TABLE role_user");
         \DB::statement("TRUNCATE TABLE permissions");
         \DB::statement("TRUNCATE TABLE roles");
         \DB::statement('SET FOREIGN_KEY_CHECKS=1;');
         /**
          * add 3 test roles
          */
         $adminRole               = new \App\Role();
         $adminRole->name         = 'administrator';
         $adminRole->display_name = 'Supper Administrator'; // optional
         $adminRole->description  = 'The Super Administrator'; // optional
         $adminRole->save();

         $managerRole               = new \App\Role();
         $managerRole->name         = 'manager';
         $managerRole->display_name = 'Manager'; // optional
         $managerRole->description  = 'Manager somethings'; // optional
         $managerRole->save();

         $guestRole               = new \App\Role();
         $guestRole->name         = 'guest';
         $guestRole->display_name = 'Guest'; // optional
         $guestRole->description  = 'Guest less authorize'; // optional
         $guestRole->save();

         /**
          * add 2 test permissions
          */
         $viewWorkersPern               = new \App\Permission();
         $viewWorkersPern->name         = 'view_workers';
         $viewWorkersPern->display_name = 'View Workers'; // optional
         $viewWorkersPern->description  = 'Read only Workers info'; // optional
         $viewWorkersPern->save();

         $editWorkersPern               = new \App\Permission();
         $editWorkersPern->name         = 'edit_workers';
         $editWorkersPern->display_name = 'Edit Workers'; // optional
         $editWorkersPern->description  = 'Create, Update and Delete Workers info'; // optional
         $editWorkersPern->save();


         /**
          * attach permissions to role
          */
         $guestRole->attachPermission($viewWorkersPern);
         $managerRole->attachPermissions([$viewWorkersPern, $editWorkersPern]);

         /**
          * attach role to user
          */
         $manager = \App\User::findOrFail(1);
         $manager->attachRole($managerRole);

         $guest = \App\User::findOrFail(2);
         $guest->attachRole($guestRole);
     }

}
