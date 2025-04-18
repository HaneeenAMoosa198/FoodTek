<?php

namespace Database\Seeders;

use App\Models\Delivery;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Testing\Fakes\NotificationFake;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

      


        $this->call([
            staffSeeder::class, 
            Addresseeder::class,
            Orderseeder::class,
            Categoriesseeder::class, 
            Menuseeder::class,
            // Orderitem "error"
            Offerseeder::class, 
            Favoriteseeder::class, 
            Chatseeder::class,
            Callseeder::class,
            Notificationseeder::class, 
            Issueseeder::class, 
            Deliveriesseeder ::class

        ]);
            
    }
}
