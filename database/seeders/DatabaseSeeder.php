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
        Lists::factory(20)->create();
        Cards::factory(40)->create();
        Tasks::factory(80)->create();
    }
}
