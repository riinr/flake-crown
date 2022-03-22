{
  description = ''Nim xml mapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xmlio-v0_2_1.flake = false;
  inputs.src-xmlio-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-xmlio-v0_2_1.owner = "codehz";
  inputs.src-xmlio-v0_2_1.repo  = "xmlio";
  inputs.src-xmlio-v0_2_1.type  = "github";
  
  inputs."vtable".owner = "nim-nix-pkgs";
  inputs."vtable".ref   = "master";
  inputs."vtable".repo  = "vtable";
  inputs."vtable".dir   = "v0_3_3";
  inputs."vtable".type  = "github";
  inputs."vtable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xmlio-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xmlio-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}