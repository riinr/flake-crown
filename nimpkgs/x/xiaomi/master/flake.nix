{
  description = ''Read and write to Xiaomi IOT devices.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xiaomi-master.flake = false;
  inputs.src-xiaomi-master.owner = "ThomasTJdev";
  inputs.src-xiaomi-master.ref   = "refs/heads/master";
  inputs.src-xiaomi-master.repo  = "nim_xiaomi";
  inputs.src-xiaomi-master.type  = "github";
  
  inputs."multicast".dir   = "nimpkgs/m/multicast";
  inputs."multicast".owner = "riinr";
  inputs."multicast".ref   = "flake-pinning";
  inputs."multicast".repo  = "flake-nimble";
  inputs."multicast".type  = "github";
  inputs."multicast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."multicast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xiaomi-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xiaomi-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}