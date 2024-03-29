<?php

use Database\Seeders\CountrySeeder;
use Database\Seeders\PermissionSeeder;
use Database\Seeders\RolePermissionSeeder;
use Database\Seeders\RoleSeeder;
use Database\Seeders\UserSeeder;
use Illuminate\Database\Seeder;
use App\Models\Country;
use Illuminate\Support\Facades\File;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $json = File::get(resource_path("data/countries.json"));
        $countries = json_decode($json);
        $data = [];
        foreach ($countries as $key => $value) {
            $data[] = [
                "name" => $value->name,
                "code" => $value->code,
                "dial_code" => $value->dial_code,
                "flag" => $value->flag
            ];
        }

        Country::insert($data);

        $this->call([
            RoleSeeder::class,
            PermissionSeeder::class,
            UserSeeder::class,
            RolePermissionSeeder::class,
        ]);
    }
}
