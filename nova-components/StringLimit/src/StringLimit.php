<?php

namespace Beyondcode\StringLimit;

use Laravel\Nova\Fields\Field;

class StringLimit extends Field
{
    /**
     * The field's component.
     *
     * @var string
     */
    public $component = 'string-limit';

    public function max($maxLength = 255){
        return $this->withMeta([
            'maxLength' => $maxLength,
        ]);
    }
}
