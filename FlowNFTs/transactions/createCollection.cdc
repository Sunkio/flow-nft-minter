import MiniKitties from 0xf8d6e0586b0a20c7

transaction {

  prepare(acct: AuthAccount) {
    acct.save(<- MiniKitties.createCollection(), to: /storage/MiniKitties3)

    // We're linking two resources in different storage domains
    acct.link<&MiniKitties.Collection{MiniKitties.CollectionPublic}>
      (/public/MiniKitties3, target: /storage/MiniKitties3)
  }

  execute {
    log("Stored a collection for our NUTTY empty NFTs")
  }
}