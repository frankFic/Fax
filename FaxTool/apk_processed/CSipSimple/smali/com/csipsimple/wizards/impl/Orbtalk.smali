.class public Lcom/csipsimple/wizards/impl/Orbtalk;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Orbtalk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "Orbtalk"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "sipgw3.orbtalk.co.uk"

    return-object v0
.end method
