.class public Lbr/com/macautomacao/maccomanda/UtilMoeda;
.super Ljava/lang/Object;
.source "UtilMoeda.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Formatar(Ljava/lang/Double;)Ljava/lang/String;
    .locals 2
    .param p0, "valor"    # Ljava/lang/Double;

    .prologue
    .line 10
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static FormatarInteiro(Ljava/lang/Double;)Ljava/lang/String;
    .locals 2
    .param p0, "valor"    # Ljava/lang/Double;

    .prologue
    .line 20
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,##0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static FormatarPataTxt(Ljava/lang/Double;)Ljava/lang/String;
    .locals 2
    .param p0, "valor"    # Ljava/lang/Double;

    .prologue
    .line 15
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
