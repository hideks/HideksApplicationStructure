{if $pagination.totalPages > 1}
    <ul>
        {if $pagination.firstPage}
            <li><a href="{$pagination.previousPageUrl}" rel="prev">Anterior</a></li>

            {if ($pagination.currentPage - 4) > $pagination.firstPage}
                <li><a href="{$pagination.firstPageUrl}" rel="start {if $pagination.currentPage eq 2}prev{/if}">{$pagination.firstPage}</a></li>
            {/if}

            {if ($pagination.currentPage - 4) > $pagination.firstPage + 1}
                <li><span>...</span></li>
            {/if}
        {/if}

        {foreach from=$pagination.sequence item=sequence name=sequence}
            {if $sequence.num == $pagination.currentPage}
                <li><span>{$sequence.num}</span></li>
            {else}
                {if $sequence.num eq $pagination.previousPage}
                    <li><a href="{$sequence.url}" rel="prev {if $pagination.currentPage eq 2}start{/if}">{$sequence.num}</a></li>
                {elseif $sequence.num eq $pagination.nextPage}
                    <li><a href="{$sequence.url}" rel="next">{$sequence.num}</a></li>
                {else}
                    {if $sequence.num eq $pagination.firstPage}
                        <li><a href="{$sequence.url}" rel="start">{$sequence.num}</a></li>
                    {else}
                        <li><a href="{$sequence.url}">{$sequence.num}</a></li>
                    {/if}
                {/if}
            {/if}
        {/foreach}

        {if $pagination.lastPage}
            {if ($pagination.currentPage + 4) < $pagination.lastPage - 1}
                <li><span>...</span></li>
            {/if}

            {if ($pagination.currentPage + 4) < $pagination.lastPage}
                <li><li><a href="{$pagination.lastPageUrl}">{$pagination.lastPage}</a></li>
            {/if}

            <li><a href="{$pagination.nextPageUrl}" rel="next">Próximo</a></li>
        {/if}
    </ul>
{/if}