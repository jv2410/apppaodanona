.class public Lbr/com/macautomacao/maccomanda/Webservice;
.super Ljava/lang/Object;
.source "Webservice.java"


# instance fields
.field private _contexto:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "contexto"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/Webservice;->_contexto:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private ChamarMetodoWsBool(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "metodo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p2, "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, "resposta":Lorg/json/JSONArray;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lbr/com/macautomacao/maccomanda/Webservice;->ExecutarMetodo(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 68
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 70
    .local v1, "ok":Ljava/lang/Boolean;
    if-nez v2, :cond_0

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 79
    :goto_1
    return-object v3

    .line 57
    .end local v1    # "ok":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "ok":Ljava/lang/Boolean;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Resposta"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    :goto_2
    move-object v3, v1

    .line 79
    goto :goto_1

    .line 75
    :catch_3
    move-exception v0

    .line 77
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private ExecutarMetodo(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 22
    .param p1, "metodo"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "ExecutarMetodo"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v19, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct/range {v19 .. v19}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v13

    .line 89
    .local v13, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 91
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 92
    .local v2, "builder":Landroid/net/Uri$Builder;
    const-string v19, "http"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    new-instance v19, Lbr/com/macautomacao/maccomanda/UtilPropriedades;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbr/com/macautomacao/maccomanda/Webservice;->_contexto:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lbr/com/macautomacao/maccomanda/UtilPropriedades;-><init>(Landroid/content/Context;)V

    const-string v20, "Servidor"

    const-string v21, "Servidor"

    invoke-virtual/range {v19 .. v21}, Lbr/com/macautomacao/maccomanda/UtilPropriedades;->Ler(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    const-string v19, "MacComandaSite/WebServices/Mobile.aspx"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    const-string v19, "Metodo"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    const-string v19, "ExecutarMetodo"

    const-string v20, "parametros"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 100
    .local v4, "chaves":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    .local v3, "chave":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 102
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 105
    .end local v3    # "chave":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 107
    .local v18, "url":Ljava/lang/String;
    const-string v19, "url"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v8, "htmlBuilder":Ljava/lang/StringBuilder;
    const-string v19, "ExecutarMetodo"

    const-string v20, "DefaultHttpClient"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 112
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    .line 113
    .local v10, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v19, 0x7530

    move/from16 v0, v19

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 114
    const/16 v19, 0x7530

    move/from16 v0, v19

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 116
    const-string v19, "ExecutarMetodo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HttpGet: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 119
    .local v9, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string v19, "ExecutarMetodo"

    const-string v20, "client.execute"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {v5, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 122
    .local v16, "response":Lorg/apache/http/HttpResponse;
    const-string v19, "ExecutarMetodo"

    const-string v20, "response.getStatusLine"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    .line 125
    .local v17, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 127
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 128
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 130
    .local v6, "content":Ljava/io/InputStream;
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 133
    .local v15, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 134
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 137
    .end local v6    # "content":Ljava/io/InputStream;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const/4 v12, 0x0

    .line 145
    :goto_2
    return-object v12

    .line 140
    .restart local v6    # "content":Ljava/io/InputStream;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :cond_3
    const-string v19, "ExecutarMetodo"

    const-string v20, "JSONObject"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    .local v14, "raiz":Lorg/json/JSONObject;
    const-string v19, "lista"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "item"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 145
    .local v12, "lista":Lorg/json/JSONArray;
    goto :goto_2
.end method

.method private FormatarMoedaEnvio(Ljava/lang/Double;)Ljava/lang/String;
    .locals 4
    .param p1, "valor"    # Ljava/lang/Double;

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "texto":Ljava/lang/String;
    const-string v1, "."

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 245
    return-object v0
.end method


# virtual methods
.method public Autenticar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "codigo"    # Ljava/lang/String;
    .param p2, "senha"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "codigo"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "senha"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "Autenticar"

    invoke-direct {p0, v1, v0}, Lbr/com/macautomacao/maccomanda/Webservice;->ChamarMetodoWsBool(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public ConsultarChaveProduto(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "codigo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeProduto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v4, "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "codigo"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v5, "ConsultarChaveProduto"

    invoke-direct {p0, v5, v4}, Lbr/com/macautomacao/maccomanda/Webservice;->ExecutarMetodo(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    .line 158
    .local v2, "listaWS":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeProduto;>;"
    if-eqz v2, :cond_0

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 165
    new-instance v3, Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    invoke-direct {v3}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;-><init>()V

    .line 166
    .local v3, "novo":Lbr/com/macautomacao/maccomanda/EntidadeProduto;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Codigo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->setCodigo(Ljava/lang/Double;)V

    .line 167
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Descricao"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->setDescricao(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ValorUnitario"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    const-string v7, "."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->setValorUnitario(Ljava/lang/Double;)V

    .line 170
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "i":I
    .end local v3    # "novo":Lbr/com/macautomacao/maccomanda/EntidadeProduto;
    :cond_0
    return-object v1
.end method

.method public EnviarComanda()Ljava/lang/Boolean;
    .locals 9

    .prologue
    .line 208
    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v0

    .line 209
    .local v0, "comanda":Lbr/com/macautomacao/maccomanda/EntidadeComanda;
    const/4 v1, 0x0

    .line 211
    .local v1, "contItensImpressao":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getItens()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 213
    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getItens()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;

    .line 214
    .local v3, "item":Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;
    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->isEnviado()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v4, "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "quantidade"

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getQuantidade()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v5, "codProduto"

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getProduto()Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    move-result-object v6

    invoke-virtual {v6}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->getCodigo()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".0"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v5, "valorUnitario"

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getProduto()Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    move-result-object v6

    invoke-virtual {v6}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->getValorUnitario()Ljava/lang/Double;

    move-result-object v6

    invoke-direct {p0, v6}, Lbr/com/macautomacao/maccomanda/Webservice;->FormatarMoedaEnvio(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v6, "observacao"

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getObservacao()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    if-ne v5, v7, :cond_1

    const-string v5, "null"

    :goto_2
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v5, "cartao"

    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getCartao()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v5, "atendente"

    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getAtendente()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v5, "mesa"

    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getMesa()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v5, "InserirItemComanda"

    invoke-direct {p0, v5, v4}, Lbr/com/macautomacao/maccomanda/Webservice;->ChamarMetodoWsBool(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 227
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Falha ao finalizar, tente novamente."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 221
    :cond_1
    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getObservacao()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 229
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->setEnviado(Z)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 234
    .end local v3    # "item":Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;
    .end local v4    # "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 235
    .restart local v4    # "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "cartao"

    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getCartao()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v5, "contItensImpressao"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v5, "Imprimir"

    invoke-direct {p0, v5, v4}, Lbr/com/macautomacao/maccomanda/Webservice;->ChamarMetodoWsBool(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
.end method

.method public ListarCategorias()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v4, "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "ListarCategorias"

    invoke-direct {p0, v5, v4}, Lbr/com/macautomacao/maccomanda/Webservice;->ExecutarMetodo(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    .line 255
    .local v2, "listaWS":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;>;"
    if-eqz v2, :cond_0

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 262
    new-instance v3, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;

    invoke-direct {v3}, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;-><init>()V

    .line 263
    .local v3, "novo":Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Codigo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->setCodigo(Ljava/lang/Double;)V

    .line 264
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Descricao"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->setDescricao(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "i":I
    .end local v3    # "novo":Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;
    :cond_0
    return-object v1
.end method

.method public ListarProdutos(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "categoriaSelecionada"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v4, "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "codCategoria"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v5, "ListarProdutos"

    invoke-direct {p0, v5, v4}, Lbr/com/macautomacao/maccomanda/Webservice;->ExecutarMetodo(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    .line 282
    .local v2, "listaWS":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v1, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;>;"
    if-eqz v2, :cond_0

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 289
    new-instance v3, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;

    invoke-direct {v3}, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;-><init>()V

    .line 290
    .local v3, "novo":Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Codigo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->setCodigo(Ljava/lang/Double;)V

    .line 291
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Descricao"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->setDescricao(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "i":I
    .end local v3    # "novo":Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;
    :cond_0
    return-object v1
.end method

.method public ListarProdutosDaComanda(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "cartao"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v4, "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "cartao"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v6, "ListarProdutosDaComanda"

    invoke-direct {p0, v6, v4}, Lbr/com/macautomacao/maccomanda/Webservice;->ExecutarMetodo(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v3

    .line 309
    .local v3, "listaWS":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v2, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;>;"
    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v6

    invoke-virtual {v6}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getItens()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 313
    if-eqz v3, :cond_0

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 316
    new-instance v5, Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    invoke-direct {v5}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;-><init>()V

    .line 317
    .local v5, "produto":Lbr/com/macautomacao/maccomanda/EntidadeProduto;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Descricao"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->setDescricao(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Codigo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->setCodigo(Ljava/lang/Double;)V

    .line 319
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ValorUnitario"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    const-string v8, "."

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->setValorUnitario(Ljava/lang/Double;)V

    .line 321
    new-instance v1, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;

    invoke-direct {v1}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;-><init>()V

    .line 322
    .local v1, "item":Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->setEnviado(Z)V

    .line 323
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Obs"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->setObservacao(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Quantidade"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->setQuantidade(I)V

    .line 325
    invoke-virtual {v1, v5}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->setProduto(Lbr/com/macautomacao/maccomanda/EntidadeProduto;)V

    .line 327
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    .end local v0    # "i":I
    .end local v1    # "item":Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;
    .end local v5    # "produto":Lbr/com/macautomacao/maccomanda/EntidadeProduto;
    :cond_0
    return-object v2
.end method

.method public ObterMesas()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeMesa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v4, "parametros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "cartao"

    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v6

    invoke-virtual {v6}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getCartao()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v5, "ObterMesas"

    invoke-direct {p0, v5, v4}, Lbr/com/macautomacao/maccomanda/Webservice;->ExecutarMetodo(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    .line 187
    .local v2, "listaWS":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeMesa;>;"
    if-eqz v2, :cond_0

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 194
    new-instance v3, Lbr/com/macautomacao/maccomanda/EntidadeMesa;

    invoke-direct {v3}, Lbr/com/macautomacao/maccomanda/EntidadeMesa;-><init>()V

    .line 195
    .local v3, "novo":Lbr/com/macautomacao/maccomanda/EntidadeMesa;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Numero"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeMesa;->setNumero(I)V

    .line 196
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Ocupada"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lbr/com/macautomacao/maccomanda/EntidadeMesa;->setOcupada(Z)V

    .line 198
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    .end local v3    # "novo":Lbr/com/macautomacao/maccomanda/EntidadeMesa;
    :cond_0
    return-object v1
.end method
