

<?php
// Reset pass
// Password reset link request routes...
Route::get('password/email', 'Auth\PasswordController@getEmail');
Route::post('password/email', 'Auth\PasswordController@postEmail');

// Password reset routes...
Route::get('password/reset/{token}', 'Auth\PasswordController@getReset');
Route::post('password/reset', 'Auth\PasswordController@postReset');
// 0.Search
Route::get('worker/search/form', [
    'as'   => 'worker-form', 'uses' => 'WorkerController@form',
]);

Route::get('worker', [
    'as'   => 'worker-list',
    'uses' => 'WorkerController@index',
    'middleware' => 'auth'
]);

Route::get('worker/search/list', [
    'as'   => 'worker-search-list', 'uses' => 'WorkerController@list',
]);
// 1.Chung Thuc
Route::get('/',function () {
    return view('welcome');
});
// Đăng nhập
Route::get('auth/login', [
    'as'   => 'login', 'uses' => 'Auth\AuthController@getLogin'
]);
Route::post('auth/login', [
    'as'   => 'login', 'uses' => 'Auth\AuthController@postLogin'
]);
// Đăng ký
Route::get('auth/register', [
    'as'   => 'register', 'uses' => 'Auth\AuthController@getRegister'
]);
Route::post('auth/register', [
    'as'   => 'register', 'uses' => 'Auth\AuthController@postRegister'
]);
// Đăng xuất
Route::get('auth/logout', [
    'as'   => 'logout', 'uses' => 'Auth\AuthController@getLogout'
]);

// 2.Show_Them_Sua_Xoa.
Route::get('worker/create', [
    'as'   => 'worker-new', 'uses' => 'WorkerController@create',
]);
Route::post('worker/add', [
    'as'   => 'worker-store', 'uses' => 'WorkerController@store',
]);


Route::get('worker/{id}', [
    'as'   => 'worker.view', 'uses' => 'WorkerController@show'
]);
Route::get('worker/{id}/skills', [
    'as'   => 'worker-skills', 'uses' => 'WorkerController@skills'
]);
Route::post('worker/{id}/update-skills', [
    'as'   => 'worker-update-skills', 'uses' => 'WorkerController@SkillsUpdate'
]);
Route::resource('articles', 'ArticleController');


// 2.Sửa
// Route::get('worker/{id}/edit', [
//     'as'   => 'worker-edit', 'uses' => 'WorkerController@edit'
// ]);
// 3.Sửa

Route::get('worker/{id}/edit', [
    'as'   => 'worker-edit', 'uses' => 'WorkerController@edit'
]);
Route::put('worker/{id}/update', [
    'as'   => 'worker-update', 'uses' => 'WorkerController@update'
]);
// Xóa
Route::delete('worker/{id}/destroy', [
    'as'   => 'worker-destroy', 'uses' => 'WorkerController@destroy'
]);
// Phone
Route::get('worker/{id}/phone', [
    'as'   => 'phone.index', 'uses' => 'PhoneController@index'
]);


Route::get('worker/{id}/phone/create', [
    'as'   => 'phone.create', 'uses' => 'PhoneController@create'
]);
Route::post('worker/{id}', [
    'as'   => 'phone.store', 'uses' => 'PhoneController@store'
]);


Route::get('phone/{id}/edit', [
    'as'   => 'phone.edit', 'uses' => 'PhoneController@edit'
]);
Route::put('phone/{id}', [
    'as'   => 'phone.update', 'uses' => 'PhoneController@update'
]);

Route::delete('phone/{id}/destroy', [
    'as'   => 'phone.destroy', 'uses' => 'PhoneController@destroy'
]);


$api = app('Dingo\Api\Routing\Router');
$api->version('v1', function ($api) {
    $api->resource("workers", \App\Http\Controllers\Api\WorkersController::class, ['except' => ['create', 'edit']]);
});



// Test Hoc SInh
Route::resource('hocsinh','HocSinhController');
