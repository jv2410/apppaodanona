.class public Lbr/com/macautomacao/maccomanda/UtilComanda;
.super Ljava/lang/Object;
.source "UtilComanda.java"


# static fields
.field private static comandaAtual:Lbr/com/macautomacao/maccomanda/EntidadeComanda;

.field private static ultimaAutenticacao:Ljava/util/Date;

.field private static ultimoAtendente:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lbr/com/macautomacao/maccomanda/UtilComanda;->comandaAtual:Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    return-object v0
.end method

.method public static getUltimoAtendente()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 25
    sget-object v0, Lbr/com/macautomacao/maccomanda/UtilComanda;->ultimaAutenticacao:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v4}, Lbr/com/macautomacao/maccomanda/UtilData;->AdicionarDias(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lbr/com/macautomacao/maccomanda/UtilComanda;->ultimaAutenticacao:Ljava/util/Date;

    .line 28
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lbr/com/macautomacao/maccomanda/UtilComanda;->ultimaAutenticacao:Ljava/util/Date;

    invoke-static {v0, v1}, Lbr/com/macautomacao/maccomanda/UtilData;->ObterDateDiffMinutos(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x28

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 29
    sput v4, Lbr/com/macautomacao/maccomanda/UtilComanda;->ultimoAtendente:I

    .line 31
    :cond_1
    sget v0, Lbr/com/macautomacao/maccomanda/UtilComanda;->ultimoAtendente:I

    return v0
.end method

.method public static setComandaAtual(Lbr/com/macautomacao/maccomanda/EntidadeComanda;)V
    .locals 0
    .param p0, "comandaAtual"    # Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    .prologue
    .line 20
    sput-object p0, Lbr/com/macautomacao/maccomanda/UtilComanda;->comandaAtual:Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    .line 21
    return-void
.end method

.method public static setUltimoAtendente(I)V
    .locals 1
    .param p0, "ultimoAtendente"    # I

    .prologue
    .line 35
    sput p0, Lbr/com/macautomacao/maccomanda/UtilComanda;->ultimoAtendente:I

    .line 36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lbr/com/macautomacao/maccomanda/UtilComanda;->ultimaAutenticacao:Ljava/util/Date;

    .line 37
    return-void
.end method
