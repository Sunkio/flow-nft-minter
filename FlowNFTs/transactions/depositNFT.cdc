import MiniKitties from 0xf8d6e0586b0a20c7

transaction {

  prepare(acct: AuthAccount) {
    let collectionReference =
      acct.borrow<&MiniKitties.Collection>(from: /storage/MiniKitties2)
      ?? panic("No collection found!")

    collectionReference.deposit(token: <- MiniKitties.mintNFT())
  }

  execute {
    log("Minted an NFT and stored it into the collection")
  }
}