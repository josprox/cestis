<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Turno extends Model
{
	use HasFactory;
	
    public $timestamps = true;

    protected $table = 'turnos';

    protected $fillable = ['turno'];
	
}
