{
  description = ''base64 cui'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."base64_decoder-master".dir   = "master";
  inputs."base64_decoder-master".owner = "nim-nix-pkgs";
  inputs."base64_decoder-master".ref   = "master";
  inputs."base64_decoder-master".repo  = "base64_decoder";
  inputs."base64_decoder-master".type  = "github";
  inputs."base64_decoder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base64_decoder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}