<?php

namespace Database\Seeders;

use App\Models\Cards;
use App\Models\Desks;
use App\Models\Lists;
use App\Models\Tasks;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

<<<<<<< HEAD
        $desks = Tasks::factory(10)->create();
        dd($desks);
        // \App\Models\User::factory(10)->create();
=======
        Desks::factory(10)->create();
        Lists::factory(10)->create();
        Cards::factory(10)->create();
        Tasks::factory(10)->create();
>>>>>>> 37be5a8c9033e0a05905b9ccc979550cc9ef9c0e
    }
}
