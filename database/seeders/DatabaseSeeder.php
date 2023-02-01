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

        Desks::factory(10)->create();
        Lists::factory(10)->create();
        Cards::factory(10)->create();
        Tasks::factory(10)->create();
    }
}
