{block 'content'}
    <h1>Ops! Alguma coisa deu errado...</h1>

    {nocache}
        {if $error_handler.code === 404}
            <h2>Erro 404 - A página que você está procurando não foi encontrada.</h2>
        {/if}
    {/nocache}

    {nocache}
        {if $error_handler.code === 500}
            <h2>Erro 500 - Ocorreu um erro inesperado.</h2>
            <h3>A nossa equipe já foi notificada e este problema será reparado o mais breve possível.</h3>
        {/if}
    {/nocache}
{/block}