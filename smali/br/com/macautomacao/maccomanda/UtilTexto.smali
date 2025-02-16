.class public Lbr/com/macautomacao/maccomanda/UtilTexto;
.super Ljava/lang/Object;
.source "UtilTexto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 8
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lbr/com/macautomacao/maccomanda/UtilTexto;->isInteger(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isInteger(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    :cond_0
    :goto_0
    return v1

    .line 13
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 14
    if-nez v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 13
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 20
    goto :goto_0
.end method
