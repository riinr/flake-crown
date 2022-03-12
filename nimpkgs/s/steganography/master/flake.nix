{
  description = ''Steganography - hide data inside an image.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-steganography-master.flake = false;
  inputs.src-steganography-master.owner = "treeform";
  inputs.src-steganography-master.ref   = "refs/heads/master";
  inputs.src-steganography-master.repo  = "steganography";
  inputs.src-steganography-master.type  = "github";
  
  inputs."pixie".dir   = "nimpkgs/p/pixie";
  inputs."pixie".owner = "riinr";
  inputs."pixie".ref   = "flake-pinning";
  inputs."pixie".repo  = "flake-nimble";
  inputs."pixie".type  = "github";
  inputs."pixie".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-steganography-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-steganography-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}