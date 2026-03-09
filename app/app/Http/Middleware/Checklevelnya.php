<?php

namespace App\Http\Middleware;

use Closure;

class Checklevelnya
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next,...$levelnya)
    {
        //dd($request->user)
        if(in_array($request->user()->level, $levelnya))
        {
            return $next($request);
        }
        return redirect('/terlarang');
       
    }
}
