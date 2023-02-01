<?php

namespace Database\Factories;

<<<<<<< HEAD
=======
use App\Models\Cards;
>>>>>>> 37be5a8c9033e0a05905b9ccc979550cc9ef9c0e
use Illuminate\Database\Eloquent\Factories\Factory;

class TasksFactory extends Factory
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
            'card_id' => rand(1,10)
=======
            'card_id' => Cards::inRandomOrder()->first()->id
>>>>>>> 37be5a8c9033e0a05905b9ccc979550cc9ef9c0e
        ];
    }
}
