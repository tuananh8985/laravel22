<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Worker extends Model{
    protected $table = 'workers';
    protected $fillable = ['name', 'birth_date', 'gender','	description'];
    protected $hidden = ['password', 'remember_token'];


    const male = 1;
    const female = 2;


    public function phones()
    {
        return $this->hasMany(Phone::class);

    }

    public function Skills()
    {
        return $this-> belongsToMany(Skill::class);
    }

}
