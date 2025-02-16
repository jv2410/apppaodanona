.class public Lbr/com/macautomacao/maccomanda/UtilActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "UtilActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public ObterBtn(I)Landroid/widget/Button;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public ObterLbl(I)Landroid/widget/TextView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public ObterTxt(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method
