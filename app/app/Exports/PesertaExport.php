<?php
namespace App\Exports;
use App\Peserta;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class PesertaExport implements FromQuery
{
    use Exportable;
    public function __construct(string $seminar_id)
    {
        $this->seminar_id = $seminar_id;
    }

    public function query()
    {
        return Peserta::query()->where('seminar_id', $this->seminar_id);
    }
}