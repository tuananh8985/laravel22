<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Phone extends Model
{
    protected $table = 'phones';
    protected $fillable = ['worker_id', 'number', 'main'];
    protected $hidden = ['password', 'remember_token'];

    // const TELECOM_VIETTEL = 1;
    // const TELECOM_VINA    = 2;
    // const TELECOM_MOBI    = 3;

    const TELECOM_VIETTEL = 1;
    const TELECOM_VINA    = 2;
    const TELECOM_MOBI    = 3;

    public function worker()
    {
        return $this->belongsTo(Worker::class);
    }

}
