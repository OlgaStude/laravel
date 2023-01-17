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

        $desks = Tasks::factory(10)->create();
        dd($desks);
        // \App\Models\User::factory(10)->create();
    }
}
