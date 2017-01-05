.class public Lcyanogenmod/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static SOLID_COLORS:[I

.field private static final sColorTable:[D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcyanogenmod/util/ColorUtils;->SOLID_COLORS:[I

    .line 331
    const/16 v0, 0x240

    new-array v0, v0, [D

    fill-array-data v0, :array_2a

    sput-object v0, Lcyanogenmod/util/ColorUtils;->sColorTable:[D

    .line 33
    return-void

    .line 35
    nop

    :array_14
    .array-data 4
        -0x10000
        -0x5b00
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x1
        -0x1000000
    .end array-data

    .line 331
    :array_2a
    .array-data 8
        0x3ff0000000000000L
        0x3fc742d5e87f5ad4L
        0x0
        0x3ff0000000000000L
        0x3fd052857e2eaf15L
        0x0
        0x3ff0000000000000L
        0x3fd3cd8db22fbd88L
        0x0
        0x3ff0000000000000L
        0x3fd6a0f3f6317518L
        0x0
        0x3ff0000000000000L
        0x3fd904c15ad3b620L
        0x0
        0x3ff0000000000000L
        0x3fdb162b907c8f73L
        0x0
        0x3ff0000000000000L
        0x3fdce6fed22d89d1L
        0x0
        0x3ff0000000000000L
        0x3fde8338da112dfbL
        0x0
        0x3ff0000000000000L
        0x3fdff381b7a59e35L
        0x0
        0x3ff0000000000000L
        0x3fe09f347e0bf480L
        0x0
        0x3ff0000000000000L
        0x3fe1652d7685c34eL
        0x3fb6387dcadc06d2L
        0x3ff0000000000000L
        0x3fe21e34f453797aL
        0x3fc200fcbfaeac25L
        0x3ff0000000000000L
        0x3fe2cb91b9506e2dL
        0x3fc78111f8d0e1afL
        0x3ff0000000000000L
        0x3fe36e8ceb6060beL
        0x3fcc562c318c3f13L
        0x3ff0000000000000L
        0x3fe408365a5a139dL
        0x3fd060fc2eba27afL
        0x3ff0000000000000L
        0x3fe49971f15efd66L
        0x3fd271d0f2f72df4L
        0x3ff0000000000000L
        0x3fe5230187699647L
        0x3fd46636b5f4991aL
        0x3ff0000000000000L
        0x3fe5a58bb58054faL
        0x3fd6437661dc1311L
        0x3ff0000000000000L
        0x3fe621a12fbb03a2L
        0x3fd80d0a29a4941fL
        0x3ff0000000000000L
        0x3fe697c0abd733d9L
        0x3fd9c55dc2a8dc83L
        0x3ff0000000000000L
        0x3fe7085a11437449L
        0x3fdb6e3511da9df1L
        0x3ff0000000000000L
        0x3fe773d0b2349b12L
        0x3fdd08e719d51342L
        0x3ff0000000000000L
        0x3fe7da7d6484b9e4L
        0x3fde9681364b6b8eL
        0x3ff0000000000000L
        0x3fe83caffee0c629L
        0x3fe00beec0e86809L
        0x3ff0000000000000L
        0x3fe89ab095899494L
        0x3fe0c6d8a1c23214L
        0x3ff0000000000000L
        0x3fe8f4c096de7e50L
        0x3fe17c4b6a8c90c8L
        0x3ff0000000000000L
        0x3fe94b1b97602e69L
        0x3fe22c8a0c32e936L
        0x3ff0000000000000L
        0x3fe99df80d984404L
        0x3fe2d7cfba92e372L
        0x3ff0000000000000L
        0x3fe9ed87fde5c973L
        0x3fe37e5179c53de2L
        0x3ff0000000000000L
        0x3fea39f965dcfe9eL
        0x3fe4203f807382daL
        0x3ff0000000000000L
        0x3fea8376cd3bdd7cL
        0x3fe4bdc5fe7c7241L
        0x3ff0000000000000L
        0x3feaca277b99ff45L
        0x3fe5570de3986b46L
        0x3ff0000000000000L
        0x3feb0e3003febd35L
        0x3fe5ec3d6032c5a5L
        0x3ff0000000000000L
        0x3feb4fb254fc5bb1L
        0x3fe67d7850c99c16L
        0x3ff0000000000000L
        0x3feb8ece1eb170fcL
        0x3fe70ae089174063L
        0x3ff0000000000000L
        0x3febcba0fdbc02fbL
        0x3fe79496147ee812L
        0x3ff0000000000000L
        0x3fec0646a62ca4faL
        0x3fe81ab77bd7bcc0L
        0x3ff0000000000000L
        0x3fec3ed913d7f926L
        0x3fe89d61d588074bL
        0x3ff0000000000000L
        0x3fec7570afeb6a9dL
        0x3fe91cb0fb35150bL
        0x3ff0000000000000L
        0x3fecaa24712383beL
        0x3fe998bf9f3cc6b0L
        0x3ff0000000000000L
        0x3fecdd09fc02447eL
        0x3fea11a7678d82e0L
        0x3ff0000000000000L
        0x3fed1bb1d21f9cfeL
        0x3fea821b2d82f00aL
        0x3ff0000000000000L
        0x3fed58f4be2d77b2L
        0x3feaf0eae9985f88L
        0x3ff0000000000000L
        0x3fed94d5f0370a2dL
        0x3feb5e1adda6e4b1L
        0x3ff0000000000000L
        0x3fedcf59949bd8e4L
        0x3febc9add916b21eL
        0x3ff0000000000000L
        0x3fee0884be96284bL
        0x3fec33a5a99d47cfL
        0x3ff0000000000000L
        0x3fee405d37e97b59L
        0x3fec9c03a175302eL
        0x3ff0000000000000L
        0x3fee76e9660aa0eeL
        0x3fed02c8acd78ef3L
        0x3ff0000000000000L
        0x3feeac3029e95d7cL
        0x3fed67f5b7fd87d6L
        0x3ff0000000000000L
        0x3feee038b4fd4d48L
        0x3fedcb8bb9dd0600L
        0x3ff0000000000000L
        0x3fef130a99610f8fL
        0x3fee2d8bd9bd7618L
        0x3ff0000000000000L
        0x3fef44ad7ea8d272L
        0x3fee8df77f52f16aL
        0x3ff0000000000000L
        0x3fef75293cba458cL
        0x3feeecd05d7b055aL
        0x3ff0000000000000L
        0x3fefa485a61cb4c2L
        0x3fef4a18723cb365L
        0x3ff0000000000000L
        0x3fefd2caa2d0fadaL
        0x3fefa5d21c420000L
        0x3ff0000000000000L
        0x3ff0000000000000L
        0x3ff0000000000000L
        0x3fefa9cff29c1448L
        0x3fefcaa5bb3aff05L
        0x3ff0000000000000L
        0x3fef57481064fd05L
        0x3fef975d645f252aL
        0x3ff0000000000000L
        0x3fef0831ad2135dbL
        0x3fef660ae6b8dc2aL
        0x3ff0000000000000L
        0x3feebc5a337d3001L
        0x3fef369410c39ca2L
        0x3ff0000000000000L
        0x3fee7392b9ab87d9L
        0x3fef08e05e7a08dbL
        0x3ff0000000000000L
        0x3fee2d5aa161392bL
        0x3feedca34970b74dL
        0x3ff0000000000000L
        0x3fede9eb25d34e46L
        0x3feeb204ca6a1bfeL
        0x3ff0000000000000L
        0x3feda916644579ddL
        0x3fee88ebac35fe6aL
        0x3ff0000000000000L
        0x3fed6ab78943b60dL
        0x3fee61441d664254L
        0x3ff0000000000000L
        0x3fed2eac75ea3cf5L
        0x3fee3afb9968f232L
        0x3ff0000000000000L
        0x3fecf4d55f4285b7L
        0x3fee1600d30eb047L
        0x3ff0000000000000L
        0x3fecbd14ae0cee25L
        0x3fedf2438ef5fc9cL
        0x3ff0000000000000L
        0x3fec874ede8a6472L
        0x3fedcfb4a38b34fdL
        0x3ff0000000000000L
        0x3fec536a2ff48f5fL
        0x3fedae45d8d23ea7L
        0x3ff0000000000000L
        0x3fec214e9f1f6a7eL
        0x3fed8de9cd8e93acL
        0x3ff0000000000000L
        0x3febf0e5b0c96108L
        0x3fed6e93ec867b85L
        0x3ff0000000000000L
        0x3febc21a5c21beedL
        0x3fed503871e16ec5L
        0x3ff0000000000000L
        0x3feb94d8e533f6d3L
        0x3fed32cc3019ce32L
        0x3ff0000000000000L
        0x3feb690ecccc76e7L
        0x3fed1644b5919ccbL
        0x3ff0000000000000L
        0x3feb3eaab5a0b643L
        0x3fecfa981c40fe4dL
        0x3ff0000000000000L
        0x3feb159c4418de9eL
        0x3fecdfbd0f149aedL
        0x3ff0000000000000L
        0x3feaedd418f1688eL
        0x3fecc5aab9d2742cL
        0x3ff0000000000000L
        0x3feac743c11ff060L
        0x3fecac58c919e4d9L
        0x3ff0000000000000L
        0x3feaa1dd903e7c12L
        0x3fec93bf5a4875e6L
        0x3ff0000000000000L
        0x3fea7d94b0a6a672L
        0x3fec7bd6f0bd16f7L
        0x3ff0000000000000L
        0x3fea5a5cf87e8165L
        0x3fec64987b36821dL
        0x3ff0000000000000L
        0x3fea382aef16f997L
        0x3fec4dfd3e59acf0L
        0x3ff0000000000000L
        0x3fea16f3b213e3e3L
        0x3fec37fee4ccf3b9L
        0x3ff0000000000000L
        0x3fe9f6ad0587287eL
        0x3fec22975f01c324L
        0x3ff0000000000000L
        0x3fe9d74d28fda532L
        0x3fec0dc0edf15fa9L
        0x3ff0000000000000L
        0x3fe9b8cae79a5886L
        0x3febf97618601e23L
        0x3ff0000000000000L
        0x3fe99b1d829cd2dfL
        0x3febe5b1aadd63c9L
        0x3ff0000000000000L
        0x3fe97e3cb161367cL
        0x3febd26eb7c3a633L
        0x3ff0000000000000L
        0x3fe9622096a37007L
        0x3febbfa8871d402dL
        0x3ff0000000000000L
        0x3fe946c1b0640b6dL
        0x3febad5a9c02d572L
        0x3ff0000000000000L
        0x3fe92c18e2a4fb4dL
        0x3feb9b80a9de8b3bL
        0x3ff0000000000000L
        0x3fe9121f6cacd185L
        0x3feb8a16a4873366L
        0x3ff0000000000000L
        0x3fe8f8ced8eb940dL
        0x3feb79189aab926aL
        0x3ff0000000000000L
        0x3fe8e02107b78466L
        0x3feb6882db67196aL
        0x3ff0000000000000L
        0x3fe8c81024905827L
        0x3feb5851d60b8fd6L
        0x3ff0000000000000L
        0x3fe8b09690a5aa1eL
        0x3feb488224dddae7L
        0x3ff0000000000000L
        0x3fe899af086bb459L
        0x3feb391082593627L
        0x3ff0000000000000L
        0x3fe883546deb6af3L
        0x3feb29f9d94a5e9eL
        0x3ff0000000000000L
        0x3fe86d81ee57361dL
        0x3feb1b3b29f7a035L
        0x3ff0000000000000L
        0x3fe85832e1d49bceL
        0x3feb0cd19a3c00e2L
        0x3ff0000000000000L
        0x3fe84362e0f5cea4L
        0x3feafeba7028dceeL
        0x3ff0000000000000L
        0x3fe82f0daf401effL
        0x3feaf0f30ca7833cL
        0x3ff0000000000000L
        0x3fe81b2f408a5ebeL
        0x3feae378eb79354bL
        0x3ff0000000000000L
        0x3fe807c3ae4019ccL
        0x3fead649a3372734L
        0x3ff0000000000000L
        0x3fe7f4c7421e5d8eL
        0x3feac962e5527faaL
        0x3ff0000000000000L
        0x3fe7e2367633b8eaL
        0x3feabcc27357908bL
        0x3ff0000000000000L
        0x3fe7d00dd4a9e5edL
        0x3feab066346765c0L
        0x3ff0000000000000L
        0x3fe7be4a22b8e793L
        0x3feaa44c1a5fd2a3L
        0x3ff0000000000000L
        0x3fe7ace835b3ec00L
        0x3fea98722739d5baL
        0x3ff0000000000000L
        0x3fe79be50de13f20L
        0x3fea8cd677c66021L
        0x3ff0000000000000L
        0x3fe78b3dc65f1f75L
        0x3fea81773e4ff1dbL
        0x3ff0000000000000L
        0x3fe77aef9a8221d9L
        0x3fea7652b27f6ea0L
        0x3ff0000000000000L
        0x3fe76af7e076cdbdL
        0x3fea6b6726d5acc5L
        0x3ff0000000000000L
        0x3fe75b53fe84d5bdL
        0x3fea60b2fdeeadc8L
        0x3ff0000000000000L
        0x3fe74c0185e70a3bL
        0x3fea5634aa819e50L
        0x3ff0000000000000L
        0x3fe73cfe12950307L
        0x3fea4bea9f45ab05L
        0x3ff0000000000000L
        0x3fe72e4760bcae47L
        0x3fea41d36f2856e1L
        0x3ff0000000000000L
        0x3fe71fdb3ca72548L
        0x3fea37edb7d3ec51L
        0x3ff0000000000000L
        0x3fe711b782b8ac84L
        0x3fea2e3811945207L
        0x3ff0000000000000L
        0x3fe703da2f8bdec6L
        0x3fea24b13fa88c7cL
        0x3ff0000000000000L
        0x3fe6f6414a781e4aL
        0x3fea1b57efd61144L
        0x3ff0000000000000L
        0x3fe6e8eaf04e5c2eL
        0x3fea122af5771002L
        0x3ff0000000000000L
        0x3fe6dbd5489c5104L
        0x3fea092923e5b856L
        0x3ff0000000000000L
        0x3fe6cefe95c7a7f5L
        0x3fea005153da9d9bL
        0x3ff0000000000000L
        0x3fe6c26524f2d39dL
        0x3fe9f7a27387e20cL
        0x3ff0000000000000L
        0x3fe6b607535b71c1L
        0x3fe9ef1b711fa7e6L
        0x3ff0000000000000L
        0x3fe6a9e388fbe797L
        0x3fe9e6bb4032751dL
        0x3ff0000000000000L
        0x3fe69df84348293aL
        0x3fe9de80ef28c241L
        0x3ff0000000000000L
        0x3fe69243ffb42abfL
        0x3fe9d66b870ca428L
        0x3ff0000000000000L
        0x3fe686c55bea3695L
        0x3fe9ce7a10e82faaL
        0x3ff0000000000000L
        0x3fe67b7af036336eL
        0x3fe9c6abb5fbcff0L
        0x3ff0000000000000L
        0x3fe670636a5d96dfL
        0x3fe9beff8f6cc4faL
        0x3ff0000000000000L
        0x3fe6657d7d843a37L
        0x3fe9b774c67b79f4L
        0x3ff0000000000000L
        0x3fe65ac7f24785a6L
        0x3fe9b00a8f252178L
        0x3ff0000000000000L
        0x3fe650418be67da3L
        0x3fe9a8c022c551d9L
        0x3ff0000000000000L
        0x3fe645e92319b589L
        0x3fe9a194b5593db4L
        0x3ff0000000000000L
        0x3fe63bbd95f82469L
        0x3fe99a879057a685L
        0x3ff0000000000000L
        0x3fe631bdd2b3ec81L
        0x3fe99397fd374dcaL
        0x3ff0000000000000L
        0x3fe627e8c220cc53L
        0x3fe98cc5456ef500L
        0x3ff0000000000000L
        0x3fe61e3d628c1146L
        0x3fe9860ec29088cfL
        0x3ff0000000000000L
        0x3fe614bab7a16c77L
        0x3fe97f73c8cf9224L
        0x3ff0000000000000L
        0x3fe60b5fc50c8f05L
        0x3fe978f3bc7ac518L
        0x3ff0000000000000L
        0x3fe6022b9e945537L
        0x3fe9728df7240e52L
        0x3ff0000000000000L
        0x3fe5f91d5d5dff0fL
        0x3fe96c41e7d6e95bL
        0x3ff0000000000000L
        0x3fe5f0341fed3045L
        0x3fe9660ef2e20a4cL
        0x3ff0000000000000L
        0x3fe5e76f0a23f04aL
        0x3fe95ff4920db41eL
        0x3ff0000000000000L
        0x3fe5decd4fff71bbL
        0x3fe959f23465625aL
        0x3ff0000000000000L
        0x3fe5d64e1ac01fc0L
        0x3fe9540753b157fcL
        0x3ff0000000000000L
        0x3fe5cdf0ae7e5820L
        0x3fe94e3369b9d7feL
        0x3ff0000000000000L
        0x3fe5c5b43f374d74L
        0x3fe94875f5a58911L
        0x3ff0000000000000L
        0x3fe5bd981661c13bL
        0x3fe942ce8157d95bL
        0x3ff0000000000000L
        0x3fe5b59b82d2d8aaL
        0x3fe93d3c9155d346L
        0x3ff0000000000000L
        0x3fe5adbdc8a2f187L
        0x3fe937bfaa24813fL
        0x3ff0000000000000L
        0x3fe5a5fe4163f878L
        0x3fe93257606418d9L
        0x3ff0000000000000L
        0x3fe59e5c4c063dddL
        0x3fe92d0343566bf2L
        0x3ff0000000000000L
        0x3fe596d7375ee6ebL
        0x3fe927c2e79bb01fL
        0x3ff0000000000000L
        0x3fe58f6e72796f2dL
        0x3fe92295e1d41af5L
        0x3ff0000000000000L
        0x3fe5882161a48ab9L
        0x3fe91d7bcbfe45c1L
        0x3ff0000000000000L
        0x3fe580ef692eeda9L
        0x3fe918744018c9d0L
        0x3ff0000000000000L
        0x3fe579d7fd82773eL
        0x3fe9137ee2df07e3L
        0x3ff0000000000000L
        0x3fe572da930906baL
        0x3fe90e9b53adfcfeL
        0x3ff0000000000000L
        0x3fe56bf698ce17a6L
        0x3fe909c931e2a628L
        0x3ff0000000000000L
        0x3fe5652b9356b46dL
        0x3fe905082cf52b91L
        0x3ff0000000000000L
        0x3fe55e78f1ae5898L
        0x3fe90057e4428a3eL
        0x3ff0000000000000L
        0x3fe557de4316d605L
        0x3fe8fbb80742ea60L
        0x3ff0000000000000L
        0x3fe5515b06b6d366L
        0x3fe8f728456e7427L
        0x3ff0000000000000L
        0x3fe54aeec671bedfL
        0x3fe8f2a84e3d4fc2L
        0x3ff0000000000000L
        0x3fe544990c2b0694L
        0x3fe8ee37cbc941a8L
        0x3ff0000000000000L
        0x3fe53e5961c618a9L
        0x3fe8e9d67847397aL
        0x3ff0000000000000L
        0x3fe5382f5be32ab2L
        0x3fe8e584032f5f69L
        0x3ff0000000000000L
        0x3fe5321a8f227246L
        0x3fe8e1402c1506cdL
        0x3ff0000000000000L
        0x3fe52c1a8ac5c140L
        0x3fe8dd0aa27057d7L
        0x3ff0000000000000L
        0x3fe5262ef388785fL
        0x3fe8d8e32b330998L
        0x3ff0000000000000L
        0x3fe520575e0acd39L
        0x3fe8d4c97b33a7f8L
        0x3ff0000000000000L
        0x3fe51a9369a9bcd2L
        0x3fe8d0bd52058652L
        0x3ff0000000000000L
        0x3fe514e2bb20a7ebL
        0x3fe8ccbe6f3bf7feL
        0x3ff0000000000000L
        0x3fe50f44ec6e27d1L
        0x3fe8c8cc926a5056L
        0x3ff0000000000000L
        0x3fe509b9a7ac00faL
        0x3fe8c4e785e0aa24L
        0x3ff0000000000000L
        0x3fe5044096f3f7dfL
        0x3fe8c10f03d3f50aL
        0x3ff0000000000000L
        0x3fe4fed9645fd0f6L
        0x3fe8bd42d6944bd2L
        0x3ff0000000000000L
        0x3fe4f983b4aaecfeL
        0x3fe8b982c871c946L
        0x3ff0000000000000L
        0x3fe4f43f374d7427L
        0x3fe8b5ce98ffc0c0L
        0x3ff0000000000000L
        0x3fe4ef0ba67c5612L
        0x3fe8b2261d4b147bL
        0x3ff0000000000000L
        0x3fe4e9e8a6f2f37dL
        0x3fe8ae8914e717d2L
        0x3ff0000000000000L
        0x3fe4e4d5ed87d851L
        0x3fe8aaf74f824946L
        0x3ff0000000000000L
        0x3fe4dfd339ce57e7L
        0x3fe8a7709ccb275bL
        0x3ff0000000000000L
        0x3fe4dae035e036b7L
        0x3fe8a3f4cc703095L
        0x3ff0000000000000L
        0x3fe4d5fca150c81aL
        0x3fe8a083ae1fe375L
        0x3ff0000000000000L
        0x3fe4d1283654fbb0L
        0x3fe89d1d0c2a5ac7L
        0x3ff0000000000000L
        0x3fe4cc62b48024d3L
        0x3fe899c0bb9c78c7L
        0x3ff0000000000000L
        0x3fe4c7abd0a8cf6dL
        0x3fe8966e8c24bbf7L
        0x3ff0000000000000L
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDeltaE(DDDDDD)D
    .registers 74
    .param p0, "L1"    # D
    .param p2, "a1"    # D
    .param p4, "b1"    # D
    .param p6, "L2"    # D
    .param p8, "a2"    # D
    .param p10, "b2"    # D

    .prologue
    .line 138
    add-double v54, p0, p6

    const-wide/high16 v56, 0x4000000000000000L

    div-double v20, v54, v56

    .line 139
    .local v20, "Lmean":D
    mul-double v54, p2, p2

    mul-double v56, p4, p4

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 140
    .local v4, "C1":D
    mul-double v54, p8, p8

    mul-double v56, p10, p10

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 141
    .local v8, "C2":D
    add-double v54, v4, v8

    const-wide/high16 v56, 0x4000000000000000L

    div-double v12, v54, v56

    .line 143
    .local v12, "Cmean":D
    const-wide/high16 v54, 0x401c000000000000L

    move-wide/from16 v0, v54

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v54

    const-wide/high16 v56, 0x401c000000000000L

    move-wide/from16 v0, v56

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v56

    const-wide/high16 v58, 0x4039000000000000L

    const-wide/high16 v60, 0x401c000000000000L

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v58

    add-double v56, v56, v58

    div-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    const-wide/high16 v56, 0x3ff0000000000000L

    sub-double v54, v56, v54

    const-wide/high16 v56, 0x4000000000000000L

    div-double v16, v54, v56

    .line 144
    .local v16, "G":D
    const-wide/high16 v54, 0x3ff0000000000000L

    add-double v54, v54, v16

    mul-double v34, p2, v54

    .line 145
    .local v34, "a1prime":D
    const-wide/high16 v54, 0x3ff0000000000000L

    add-double v54, v54, v16

    mul-double v36, p8, v54

    .line 147
    .local v36, "a2prime":D
    mul-double v54, v34, v34

    mul-double v56, p4, p4

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 148
    .local v6, "C1prime":D
    mul-double v54, v36, v36

    mul-double v56, p10, p10

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 149
    .local v10, "C2prime":D
    add-double v54, v6, v10

    const-wide/high16 v56, 0x4000000000000000L

    div-double v14, v54, v56

    .line 151
    .local v14, "Cmeanprime":D
    move-wide/from16 v0, p4

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    .line 152
    move-wide/from16 v0, p4

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v54

    const-wide/16 v58, 0x0

    cmpg-double v54, v54, v58

    if-gez v54, :cond_245

    const/16 v54, 0x1

    :goto_86
    move/from16 v0, v54

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide v58, 0x401921fb54442d18L

    mul-double v54, v54, v58

    .line 151
    add-double v50, v56, v54

    .line 153
    .local v50, "h1prime":D
    move-wide/from16 v0, p10

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    .line 154
    move-wide/from16 v0, p10

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v54

    const-wide/16 v58, 0x0

    cmpg-double v54, v54, v58

    if-gez v54, :cond_249

    const/16 v54, 0x1

    :goto_ac
    move/from16 v0, v54

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide v58, 0x401921fb54442d18L

    mul-double v54, v54, v58

    .line 153
    add-double v52, v56, v54

    .line 155
    .local v52, "h2prime":D
    sub-double v54, v50, v52

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    const-wide v56, 0x400921fb54442d18L

    cmpl-double v54, v54, v56

    if-lez v54, :cond_24d

    .line 156
    add-double v54, v50, v52

    const-wide v56, 0x401921fb54442d18L

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L

    div-double v18, v54, v56

    .line 158
    .local v18, "Hmeanprime":D
    :goto_d6
    const-wide v54, 0x3fe0c152382d7365L

    sub-double v54, v18, v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->cos(D)D

    move-result-wide v54

    const-wide v56, 0x3fc5c28f5c28f5c3L

    mul-double v54, v54, v56

    const-wide/high16 v56, 0x3ff0000000000000L

    sub-double v54, v56, v54

    .line 159
    const-wide/high16 v56, 0x4000000000000000L

    mul-double v56, v56, v18

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    const-wide v58, 0x3fceb851eb851eb8L

    mul-double v56, v56, v58

    .line 158
    add-double v54, v54, v56

    .line 159
    const-wide/high16 v56, 0x4008000000000000L

    mul-double v56, v56, v18

    const-wide v58, 0x3fbacee9f37bebd5L

    add-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    const-wide v58, 0x3fd47ae147ae147bL

    mul-double v56, v56, v58

    .line 158
    add-double v54, v54, v56

    .line 160
    const-wide/high16 v56, 0x4010000000000000L

    mul-double v56, v56, v18

    const-wide v58, 0x3ff197c987c952c4L

    sub-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    const-wide v58, 0x3fc999999999999aL

    mul-double v56, v56, v58

    .line 158
    sub-double v32, v54, v56

    .line 162
    .local v32, "T":D
    sub-double v54, v50, v52

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    const-wide v56, 0x400921fb54442d18L

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_255

    sub-double v48, v52, v50

    .line 166
    .local v48, "deltahprime":D
    :goto_13e
    sub-double v44, p6, p0

    .line 167
    .local v44, "deltaLprime":D
    sub-double v38, v10, v6

    .line 168
    .local v38, "deltaCprime":D
    mul-double v54, v6, v10

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    const-wide/high16 v56, 0x4000000000000000L

    mul-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L

    div-double v56, v48, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    mul-double v42, v54, v56

    .line 169
    .local v42, "deltaHprime":D
    const-wide/high16 v54, 0x4049000000000000L

    sub-double v54, v20, v54

    const-wide v56, 0x3f8eb851eb851eb8L

    mul-double v54, v54, v56

    const-wide/high16 v56, 0x4049000000000000L

    sub-double v56, v20, v56

    mul-double v54, v54, v56

    .line 170
    const-wide/high16 v56, 0x4049000000000000L

    sub-double v56, v20, v56

    const-wide/high16 v58, 0x4049000000000000L

    sub-double v58, v20, v58

    mul-double v56, v56, v58

    const-wide/high16 v58, 0x4034000000000000L

    add-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    .line 169
    div-double v54, v54, v56

    const-wide/high16 v56, 0x3ff0000000000000L

    add-double v30, v56, v54

    .line 171
    .local v30, "SL":D
    const-wide v54, 0x3fa70a3d70a3d70aL

    mul-double v54, v54, v14

    const-wide/high16 v56, 0x3ff0000000000000L

    add-double v26, v56, v54

    .line 172
    .local v26, "SC":D
    const-wide v54, 0x3f8eb851eb851eb8L

    mul-double v54, v54, v14

    mul-double v54, v54, v32

    const-wide/high16 v56, 0x3ff0000000000000L

    add-double v28, v56, v54

    .line 175
    .local v28, "SH":D
    const-wide v54, 0x404ca5dc1a63c1f8L

    mul-double v54, v54, v18

    const-wide v56, 0x4071300000000000L

    sub-double v54, v54, v56

    const-wide/high16 v56, 0x4039000000000000L

    div-double v54, v54, v56

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    .line 176
    const-wide v56, 0x404ca5dc1a63c1f8L

    mul-double v56, v56, v18

    const-wide v58, 0x4071300000000000L

    sub-double v56, v56, v58

    const-wide/high16 v58, 0x4039000000000000L

    div-double v56, v56, v58

    .line 175
    mul-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->exp(D)D

    move-result-wide v54

    .line 174
    const-wide v56, 0x3fe0c152382d7365L

    mul-double v46, v56, v54

    .line 178
    .local v46, "deltaTheta":D
    const-wide/high16 v54, 0x401c000000000000L

    move-wide/from16 v0, v54

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v54

    const-wide/high16 v56, 0x401c000000000000L

    move-wide/from16 v0, v56

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v56

    const-wide/high16 v58, 0x4039000000000000L

    const-wide/high16 v60, 0x401c000000000000L

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v58

    add-double v56, v56, v58

    div-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    .line 177
    const-wide/high16 v56, 0x4000000000000000L

    mul-double v22, v56, v54

    .line 179
    .local v22, "RC":D
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v54, v0

    const-wide/high16 v56, 0x4000000000000000L

    mul-double v56, v56, v46

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    mul-double v24, v54, v56

    .line 181
    .local v24, "RT":D
    const-wide/high16 v54, 0x3ff0000000000000L

    .line 186
    mul-double v54, v54, v30

    div-double v54, v44, v54

    .line 181
    const-wide/high16 v56, 0x3ff0000000000000L

    .line 186
    mul-double v56, v56, v30

    div-double v56, v44, v56

    mul-double v54, v54, v56

    .line 182
    const-wide/high16 v56, 0x3ff0000000000000L

    .line 187
    mul-double v56, v56, v26

    div-double v56, v38, v56

    .line 182
    const-wide/high16 v58, 0x3ff0000000000000L

    .line 187
    mul-double v58, v58, v26

    div-double v58, v38, v58

    mul-double v56, v56, v58

    .line 186
    add-double v54, v54, v56

    .line 183
    const-wide/high16 v56, 0x3ff0000000000000L

    .line 188
    mul-double v56, v56, v28

    div-double v56, v42, v56

    .line 183
    const-wide/high16 v58, 0x3ff0000000000000L

    .line 188
    mul-double v58, v58, v28

    div-double v58, v42, v58

    mul-double v56, v56, v58

    .line 186
    add-double v54, v54, v56

    .line 182
    const-wide/high16 v56, 0x3ff0000000000000L

    .line 189
    mul-double v56, v56, v26

    div-double v56, v38, v56

    mul-double v56, v56, v24

    .line 183
    const-wide/high16 v58, 0x3ff0000000000000L

    .line 189
    mul-double v58, v58, v28

    div-double v58, v42, v58

    mul-double v56, v56, v58

    .line 186
    add-double v54, v54, v56

    .line 185
    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v40

    .line 191
    .local v40, "deltaE":D
    return-wide v40

    .line 152
    .end local v18    # "Hmeanprime":D
    .end local v22    # "RC":D
    .end local v24    # "RT":D
    .end local v26    # "SC":D
    .end local v28    # "SH":D
    .end local v30    # "SL":D
    .end local v32    # "T":D
    .end local v38    # "deltaCprime":D
    .end local v40    # "deltaE":D
    .end local v42    # "deltaHprime":D
    .end local v44    # "deltaLprime":D
    .end local v46    # "deltaTheta":D
    .end local v48    # "deltahprime":D
    .end local v50    # "h1prime":D
    .end local v52    # "h2prime":D
    :cond_245
    const/16 v54, 0x0

    goto/16 :goto_86

    .line 154
    .restart local v50    # "h1prime":D
    :cond_249
    const/16 v54, 0x0

    goto/16 :goto_ac

    .line 156
    .restart local v52    # "h2prime":D
    :cond_24d
    add-double v54, v50, v52

    const-wide/high16 v56, 0x4000000000000000L

    div-double v18, v54, v56

    .restart local v18    # "Hmeanprime":D
    goto/16 :goto_d6

    .line 163
    .restart local v32    # "T":D
    :cond_255
    cmpg-double v54, v52, v50

    if-gtz v54, :cond_264

    sub-double v54, v52, v50

    const-wide v56, 0x401921fb54442d18L

    add-double v48, v54, v56

    .restart local v48    # "deltahprime":D
    goto/16 :goto_13e

    .line 164
    .end local v48    # "deltahprime":D
    :cond_264
    sub-double v54, v52, v50

    const-wide v56, 0x401921fb54442d18L

    sub-double v48, v54, v56

    .restart local v48    # "deltahprime":D
    goto/16 :goto_13e
.end method

.method public static convertRGBtoLAB(I)[F
    .registers 23
    .param p0, "rgb"    # I

    .prologue
    .line 59
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v13, v0, [F

    .line 69
    .local v13, "lab":[F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000

    div-float v14, v18, v19

    .line 70
    .local v14, "r":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000

    div-float v12, v18, v19

    .line 71
    .local v12, "g":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000

    div-float v7, v18, v19

    .line 74
    .local v7, "b":F
    float-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa4b5dcc63f1412L

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_11c

    .line 75
    const/high16 v18, 0x41400000

    div-float v14, v14, v18

    .line 79
    :goto_3d
    float-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa4b5dcc63f1412L

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_13b

    .line 80
    const/high16 v18, 0x41400000

    div-float v12, v12, v18

    .line 84
    :goto_4d
    float-to-double v0, v7

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa4b5dcc63f1412L

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_15a

    .line 85
    const/high16 v18, 0x41400000

    div-float v7, v7, v18

    .line 89
    :goto_5d
    const v18, 0x3edf4236

    mul-float v18, v18, v14

    const v19, 0x3ec5296a

    mul-float v19, v19, v12

    add-float v18, v18, v19

    const v19, 0x3e128582

    mul-float v19, v19, v7

    add-float v3, v18, v19

    .line 90
    .local v3, "X":F
    const v18, 0x3e63d4d6

    mul-float v18, v18, v14

    const v19, 0x3f3785d8

    mul-float v19, v19, v12

    add-float v18, v18, v19

    const v19, 0x3d784e3c

    mul-float v19, v19, v7

    add-float v4, v18, v19

    .line 91
    .local v4, "Y":F
    const v18, 0x3c6436f9

    mul-float v18, v18, v14

    const v19, 0x3dc6dacb

    mul-float v19, v19, v12

    add-float v18, v18, v19

    const v19, 0x3f36d4dc

    mul-float v19, v19, v7

    add-float v5, v18, v19

    .line 64
    .local v5, "Z":F
    const v18, 0x3f76d730

    .line 94
    div-float v15, v3, v18

    .line 65
    .local v15, "xr":F
    const/high16 v18, 0x3f800000

    .line 95
    div-float v16, v4, v18

    .line 66
    .local v16, "yr":F
    const v18, 0x3f534107

    .line 96
    div-float v17, v5, v18

    .line 61
    .local v17, "zr":F
    const v18, 0x3c111aa7

    .line 98
    cmpl-float v18, v15, v18

    if-lez v18, :cond_179

    .line 99
    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555555555555L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v9, v0

    .line 61
    .local v9, "fx":F
    :goto_ba
    const v18, 0x3c111aa7

    .line 103
    cmpl-float v18, v16, v18

    if-lez v18, :cond_190

    .line 104
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555555555555L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 61
    .local v10, "fy":F
    :goto_d2
    const v18, 0x3c111aa7

    .line 108
    cmpl-float v18, v17, v18

    if-lez v18, :cond_1a7

    .line 109
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555555555555L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 113
    .local v11, "fz":F
    :goto_ea
    const/high16 v18, 0x42e80000

    mul-float v18, v18, v10

    const/high16 v19, 0x41800000

    sub-float v2, v18, v19

    .line 114
    .local v2, "Ls":F
    sub-float v18, v9, v10

    const/high16 v19, 0x43fa0000

    mul-float v6, v19, v18

    .line 115
    .local v6, "as":F
    sub-float v18, v10, v11

    const/high16 v19, 0x43480000

    mul-float v8, v19, v18

    .line 117
    .local v8, "bs":F
    const v18, 0x40233333

    mul-float v18, v18, v2

    const/high16 v19, 0x3f000000

    add-float v18, v18, v19

    const/16 v19, 0x0

    aput v18, v13, v19

    .line 118
    const/high16 v18, 0x3f000000

    add-float v18, v18, v6

    const/16 v19, 0x1

    aput v18, v13, v19

    .line 119
    const/high16 v18, 0x3f000000

    add-float v18, v18, v8

    const/16 v19, 0x2

    aput v18, v13, v19

    .line 121
    return-object v13

    .line 77
    .end local v2    # "Ls":F
    .end local v3    # "X":F
    .end local v4    # "Y":F
    .end local v5    # "Z":F
    .end local v6    # "as":F
    .end local v8    # "bs":F
    .end local v9    # "fx":F
    .end local v10    # "fy":F
    .end local v11    # "fz":F
    .end local v15    # "xr":F
    .end local v16    # "yr":F
    .end local v17    # "zr":F
    :cond_11c
    float-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide v20, 0x3fac28f5c28f5c29L

    add-double v18, v18, v20

    const-wide v20, 0x3ff0e147ae147ae1L

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    goto/16 :goto_3d

    .line 82
    :cond_13b
    float-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3fac28f5c28f5c29L

    add-double v18, v18, v20

    const-wide v20, 0x3ff0e147ae147ae1L

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v12, v0

    goto/16 :goto_4d

    .line 87
    :cond_15a
    float-to-double v0, v7

    move-wide/from16 v18, v0

    const-wide v20, 0x3fac28f5c28f5c29L

    add-double v18, v18, v20

    const-wide v20, 0x3ff0e147ae147ae1L

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v7, v0

    goto/16 :goto_5d

    .line 62
    .restart local v3    # "X":F
    .restart local v4    # "Y":F
    .restart local v5    # "Z":F
    .restart local v15    # "xr":F
    .restart local v16    # "yr":F
    .restart local v17    # "zr":F
    :cond_179
    const v18, 0x4461d2f7

    .line 101
    mul-float v18, v18, v15

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L

    add-double v18, v18, v20

    const-wide/high16 v20, 0x405d000000000000L

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v9, v0

    .restart local v9    # "fx":F
    goto/16 :goto_ba

    .line 62
    :cond_190
    const v18, 0x4461d2f7

    .line 106
    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L

    add-double v18, v18, v20

    const-wide/high16 v20, 0x405d000000000000L

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .restart local v10    # "fy":F
    goto/16 :goto_d2

    .line 62
    :cond_1a7
    const v18, 0x4461d2f7

    .line 111
    mul-float v18, v18, v17

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L

    add-double v18, v18, v20

    const-wide/high16 v20, 0x405d000000000000L

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .restart local v11    # "fz":F
    goto/16 :goto_ea
.end method

.method public static dropAlpha(I)I
    .registers 2
    .param p0, "rgba"    # I

    .prologue
    .line 48
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static findPerceptuallyNearestColor(I[I)I
    .registers 24
    .param p0, "rgb"    # I
    .param p1, "colors"    # [I

    .prologue
    .line 204
    const/16 v20, 0x0

    .line 205
    .local v20, "nearestColor":I
    const-wide v16, 0x7fefffffffffffffL

    .line 207
    .local v16, "closest":D
    invoke-static/range {p0 .. p0}, Lcyanogenmod/util/ColorUtils;->convertRGBtoLAB(I)[F

    move-result-object v21

    .line 209
    .local v21, "original":[F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_3e

    .line 210
    aget v2, p1, v15

    invoke-static {v2}, Lcyanogenmod/util/ColorUtils;->convertRGBtoLAB(I)[F

    move-result-object v14

    .line 211
    .local v14, "cl":[F
    const/4 v2, 0x0

    aget v2, v21, v2

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v4, v21, v4

    float-to-double v4, v4

    const/4 v6, 0x2

    aget v6, v21, v6

    float-to-double v6, v6

    .line 212
    const/4 v8, 0x0

    aget v8, v14, v8

    float-to-double v8, v8

    const/4 v10, 0x1

    aget v10, v14, v10

    float-to-double v10, v10

    const/4 v12, 0x2

    aget v12, v14, v12

    float-to-double v12, v12

    .line 211
    invoke-static/range {v2 .. v13}, Lcyanogenmod/util/ColorUtils;->calculateDeltaE(DDDDDD)D

    move-result-wide v18

    .line 213
    .local v18, "deltaE":D
    cmpg-double v2, v18, v16

    if-gez v2, :cond_3b

    .line 214
    aget v20, p1, v15

    .line 215
    move-wide/from16 v16, v18

    .line 209
    :cond_3b
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 218
    .end local v14    # "cl":[F
    .end local v18    # "deltaE":D
    :cond_3e
    return v20
.end method

.method public static findPerceptuallyNearestSolidColor(I)I
    .registers 2
    .param p0, "rgb"    # I

    .prologue
    .line 231
    sget-object v0, Lcyanogenmod/util/ColorUtils;->SOLID_COLORS:[I

    invoke-static {p0, v0}, Lcyanogenmod/util/ColorUtils;->findPerceptuallyNearestColor(I[I)I

    move-result v0

    return v0
.end method

.method public static generateAlertColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    .registers 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, -0x1

    .line 263
    const/high16 v0, -0x1000000

    .line 264
    .local v0, "alertColor":I
    const/4 v1, 0x0

    .line 266
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez p0, :cond_7

    .line 267
    return v0

    .line 270
    :cond_7
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1f

    move-object v5, p0

    .line 271
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 278
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_12
    if-eqz v1, :cond_53

    .line 279
    invoke-static {v1}, Lcom/android/internal/util/cm/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/util/cm/palette/Palette$Builder;->generate()Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v4

    .line 280
    .local v4, "p":Lcom/android/internal/util/cm/palette/Palette;
    if-nez v4, :cond_2e

    .line 281
    return v0

    .line 273
    .end local v4    # "p":Lcom/android/internal/util/cm/palette/Palette;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :cond_1f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 274
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 275
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 273
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_12

    .line 285
    .restart local v4    # "p":Lcom/android/internal/util/cm/palette/Palette;
    :cond_2e
    invoke-static {v4}, Lcyanogenmod/util/ColorUtils;->getDominantSwatch(Lcom/android/internal/util/cm/palette/Palette;)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v2

    .line 263
    .local v2, "dominantSwatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    const/high16 v3, -0x1000000

    .line 287
    .local v3, "iconColor":I
    if-eqz v2, :cond_3e

    .line 288
    invoke-virtual {v2}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result v3

    .line 289
    invoke-static {v3}, Lcyanogenmod/util/ColorUtils;->findPerceptuallyNearestSolidColor(I)I

    move-result v0

    .line 293
    :cond_3e
    const/high16 v5, -0x1000000

    if-eq v0, v5, :cond_44

    if-ne v0, v8, :cond_4c

    .line 294
    :cond_44
    invoke-virtual {v4, v8}, Lcom/android/internal/util/cm/palette/Palette;->getVibrantColor(I)I

    move-result v3

    .line 295
    invoke-static {v3}, Lcyanogenmod/util/ColorUtils;->findPerceptuallyNearestSolidColor(I)I

    move-result v0

    .line 298
    :cond_4c
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_53

    .line 299
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    .end local v2    # "dominantSwatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .end local v3    # "iconColor":I
    .end local v4    # "p":Lcom/android/internal/util/cm/palette/Palette;
    :cond_53
    return v0
.end method

.method public static getDominantSwatch(Lcom/android/internal/util/cm/palette/Palette;)Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .registers 3
    .param p0, "palette"    # Lcom/android/internal/util/cm/palette/Palette;

    .prologue
    const/4 v1, 0x0

    .line 241
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 242
    :cond_d
    return-object v1

    .line 245
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcyanogenmod/util/ColorUtils$1;

    invoke-direct {v1}, Lcyanogenmod/util/ColorUtils$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method private static interp(IF)F
    .registers 6
    .param p0, "i"    # I
    .param p1, "a"    # F

    .prologue
    .line 322
    sget-object v0, Lcyanogenmod/util/ColorUtils;->sColorTable:[D

    aget-wide v0, v0, p0

    double-to-float v0, v0

    sget-object v1, Lcyanogenmod/util/ColorUtils;->sColorTable:[D

    add-int/lit8 v2, p0, 0x3

    aget-wide v2, v1, v2

    double-to-float v1, v2

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static temperatureToRGB(I)[F
    .registers 7
    .param p0, "degreesK"    # I

    .prologue
    .line 314
    const/16 v3, 0x3e8

    const/16 v4, 0x4e20

    invoke-static {p0, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 315
    .local v2, "k":I
    rem-int/lit8 v3, v2, 0x64

    int-to-float v3, v3

    const/high16 v4, 0x42c80000

    div-float v0, v3, v4

    .line 316
    .local v0, "a":F
    add-int/lit16 v3, v2, -0x3e8

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v1, v3, 0x3

    .line 318
    .local v1, "i":I
    const/4 v3, 0x3

    new-array v3, v3, [F

    invoke-static {v1, v0}, Lcyanogenmod/util/ColorUtils;->interp(IF)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4, v0}, Lcyanogenmod/util/ColorUtils;->interp(IF)F

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    add-int/lit8 v4, v1, 0x2

    invoke-static {v4, v0}, Lcyanogenmod/util/ColorUtils;->interp(IF)F

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    return-object v3
.end method
