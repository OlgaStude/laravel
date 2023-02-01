<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
<<<<<<< HEAD
=======
use App\Models\Desks;
>>>>>>> 37be5a8c9033e0a05905b9ccc979550cc9ef9c0e

class ListsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
<<<<<<< HEAD
            'desk_id' => rand(31,40)
=======
            'desk_id' => Desks::inRandomOrder()->first()->id
>>>>>>> 37be5a8c9033e0a05905b9ccc979550cc9ef9c0e
        ];
    }
}
