<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class DesksFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //Занесение внешнего ключа и имени в таблицу Desk
            'name' => $this->faker->name()
        ];
    }
}
