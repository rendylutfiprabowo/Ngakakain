<?php

namespace Database\Seeders;

use App\Models\Customer;
use Carbon\Carbon;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create('id_ID');

        for ($i = 0; $i < 5; $i++) {
            $createdAt = Carbon::today()->toDateString();
            $updatedAt = Carbon::today()->toDateString();

            $customer = Customer::insert([
                'name' => $faker->name,
                'phone_number' => $faker->phoneNumber,
                'address' => $faker->address,
                'created_at' => $createdAt,
                'updated_at' => $updatedAt
            ]);
        }
    }
}
