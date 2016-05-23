<?php namespace Modules\Blog\Http\Controllers;

use Pingpong\Modules\Routing\Controller;

class SiteController extends Controller {
	
	public function index()
	{
		return view('Blog::index');
	}
	
}