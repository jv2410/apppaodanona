.class public Lbr/com/macautomacao/maccomanda/UtilData;
.super Ljava/lang/Object;
.source "UtilData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static AdicionarDias(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "data"    # Ljava/util/Date;
    .param p1, "dias"    # I

    .prologue
    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    .local v0, "calendario":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 127
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 129
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static AdicionarMeses(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "data"    # Ljava/util/Date;
    .param p1, "meses"    # I

    .prologue
    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 135
    .local v0, "calendario":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 136
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 138
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static CompletarComZeros(II)Ljava/lang/String;
    .locals 3
    .param p0, "numero"    # I
    .param p1, "tamanho"    # I

    .prologue
    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "aux":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    return-object v0
.end method

.method public static ConverterBrasil(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "dataString"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, "format":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 208
    .local v0, "data":Ljava/util/Date;
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":Ljava/util/Date;
    .local v1, "data":Ljava/util/Date;
    move-object v0, v1

    .line 212
    .end local v1    # "data":Ljava/util/Date;
    .restart local v0    # "data":Ljava/util/Date;
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static ConverterDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/util/Date;

    .prologue
    .line 188
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "dataString":Ljava/lang/String;
    return-object v0
.end method

.method public static ConverterMes(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "data"    # Ljava/util/Date;

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lbr/com/macautomacao/maccomanda/UtilData;->AdicionarDias(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    .line 266
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterSoData(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 268
    return-object p0
.end method

.method private static ConverterQuinzena(Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p0, "data"    # Ljava/util/Date;

    .prologue
    .line 273
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 274
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x10

    invoke-static {p0, v0}, Lbr/com/macautomacao/maccomanda/UtilData;->AdicionarDias(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    .line 278
    :goto_0
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterSoData(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 280
    return-object p0

    .line 276
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lbr/com/macautomacao/maccomanda/UtilData;->AdicionarDias(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    goto :goto_0
.end method

.method private static ConverterSemana(Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p0, "data"    # Ljava/util/Date;

    .prologue
    .line 285
    invoke-virtual {p0}, Ljava/util/Date;->getDay()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 286
    invoke-virtual {p0}, Ljava/util/Date;->getDay()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lbr/com/macautomacao/maccomanda/UtilData;->AdicionarDias(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    .line 288
    :cond_0
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterSoData(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 290
    return-object p0
.end method

.method public static ConverterStringDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "dataString"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 176
    .local v3, "format":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 179
    .local v0, "data":Ljava/util/Date;
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":Ljava/util/Date;
    .local v1, "data":Ljava/util/Date;
    move-object v0, v1

    .line 183
    .end local v1    # "data":Ljava/util/Date;
    .restart local v0    # "data":Ljava/util/Date;
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static ConverterStringDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "dataTexto"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ConverterStringDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 19
    .local v0, "data":Ljava/util/Date;
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterHoras(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 20
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterMinutos(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 21
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterSegundos(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 23
    return-object v0
.end method

.method public static Formatar(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/util/Date;
    .param p1, "mascara"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "dataString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static FormatarBrasil(III)Ljava/lang/String;
    .locals 4
    .param p0, "dia"    # I
    .param p1, "mes"    # I
    .param p2, "ano"    # I

    .prologue
    const/4 v3, 0x2

    .line 56
    invoke-static {p0, v3}, Lbr/com/macautomacao/maccomanda/UtilData;->CompletarComZeros(II)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v3}, Lbr/com/macautomacao/maccomanda/UtilData;->CompletarComZeros(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p2, v2}, Lbr/com/macautomacao/maccomanda/UtilData;->CompletarComZeros(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public static FormatarBrasil(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/util/Date;

    .prologue
    .line 216
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "dataString":Ljava/lang/String;
    return-object v0
.end method

.method private static FormatarDiaMes(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/util/Date;

    .prologue
    .line 259
    const-string v0, "dd/MMM"

    invoke-static {p0, v0}, Lbr/com/macautomacao/maccomanda/UtilData;->Formatar(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ObterDataPeriodo(Ljava/util/Date;Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/util/Date;
    .param p1, "periodo"    # Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    .prologue
    .line 236
    sget-object v1, Lbr/com/macautomacao/maccomanda/UtilData$1;->$SwitchMap$br$com$macautomacao$maccomanda$UtilData$TipoPeriodo:[I

    invoke-virtual {p1}, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 253
    :goto_0
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->FormatarDiaMes(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "dataString":Ljava/lang/String;
    return-object v0

    .line 238
    .end local v0    # "dataString":Ljava/lang/String;
    :pswitch_0
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterSoData(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ConverterSemana(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 242
    goto :goto_0

    .line 244
    :pswitch_2
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ConverterQuinzena(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 245
    goto :goto_0

    .line 247
    :pswitch_3
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ConverterMes(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 248
    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static ObterDateDiffMiliSegundos(Ljava/util/Date;Ljava/util/Date;)J
    .locals 6
    .param p0, "maior"    # Ljava/util/Date;
    .param p1, "menor"    # Ljava/util/Date;

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 120
    .local v0, "diferenca":J
    return-wide v0
.end method

.method public static ObterDateDiffMinutos(Ljava/util/Date;Ljava/util/Date;)J
    .locals 6
    .param p0, "maior"    # Ljava/util/Date;
    .param p1, "menor"    # Ljava/util/Date;

    .prologue
    .line 109
    invoke-static {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterDateDiffSegundos(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long v0, v2, v4

    .line 110
    .local v0, "diferenca":J
    return-wide v0
.end method

.method public static ObterDateDiffSegundos(Ljava/util/Date;Ljava/util/Date;)J
    .locals 6
    .param p0, "maior"    # Ljava/util/Date;
    .param p1, "menor"    # Ljava/util/Date;

    .prologue
    .line 114
    invoke-static {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterDateDiffMiliSegundos(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 115
    .local v0, "diferenca":J
    return-wide v0
.end method

.method private static ObterHoras(Ljava/lang/String;)I
    .locals 3
    .param p0, "dataTexto"    # Ljava/lang/String;

    .prologue
    .line 37
    const/16 v1, 0xb

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static ObterMinutos(Ljava/lang/String;)I
    .locals 3
    .param p0, "dataTexto"    # Ljava/lang/String;

    .prologue
    .line 32
    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static ObterPrimeiraDataMes()Ljava/util/Date;
    .locals 1

    .prologue
    .line 294
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterPrimeiraDataMes(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ObterPrimeiraDataMes(Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p0, "data"    # Ljava/util/Date;

    .prologue
    .line 298
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterSoData(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lbr/com/macautomacao/maccomanda/UtilData;->AdicionarDias(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    .line 302
    :cond_0
    return-object p0
.end method

.method private static ObterSegundos(Ljava/lang/String;)I
    .locals 2
    .param p0, "dataTexto"    # Ljava/lang/String;

    .prologue
    .line 27
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static ObterSoData(Ljava/util/Date;)Ljava/util/Date;
    .locals 4
    .param p0, "data"    # Ljava/util/Date;

    .prologue
    .line 223
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "dataString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/UtilData;->ConverterStringDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 230
    return-object p0
.end method

.method public static ObterUltimoDiaMes()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterUltimoDiaMes(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ObterUltimoDiaMes(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "data"    # Ljava/util/Date;

    .prologue
    .line 47
    invoke-static {p0}, Lbr/com/macautomacao/maccomanda/UtilData;->ConverterMes(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 48
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lbr/com/macautomacao/maccomanda/UtilData;->AdicionarMeses(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    .line 49
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lbr/com/macautomacao/maccomanda/UtilData;->AdicionarDias(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    .line 51
    return-object p0
.end method
