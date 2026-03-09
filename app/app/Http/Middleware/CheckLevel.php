<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
class CheckLevel
{
    /**
     * Handle an incoming request.
     * Supports multiple levels: checklevel:admin,operator
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string  ...$levels
     * @return mixed
     */
    public function handle($request, Closure $next, ...$levels)
    {
        if(!Auth::user())
        {
            return redirect('/login');
        }

        if(in_array($request->user()->level, $levels)){
            return $next($request);
        }

        return redirect('/terlarang');
    }
}
