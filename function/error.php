<?php



const EMAIL_INVALID = 1;
const FIELD_EMPTY = 2;



function getErrorMessage(int $code): string
{
    switch ($code) {    
        case EMAIL_INVALID:
            $msg = "Ce champ n'est pas un email";
            break;
        case FIELD_EMPTY:
            $msg = "Veuillez remplir les champs sont obligatoires";
        default:
            $msg = "Une erreur est survenue";            
    }
    return $msg;
}