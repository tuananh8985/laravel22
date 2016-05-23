<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HocSinh extends Model
{
    protected $table = 	'hoc_sinhs';
    protected $label = ['hoten','toan','ly','hoa'];
    public $timestamps = false;
}
