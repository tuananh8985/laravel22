<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
    public function Skills()
        {
            return $this-> belongsToMany(Skill::class);
        }

}
