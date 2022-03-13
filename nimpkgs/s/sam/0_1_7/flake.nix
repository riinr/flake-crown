{
  description = ''Fast and just works JSON-Binding for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sam-0_1_7.flake = false;
  inputs.src-sam-0_1_7.owner = "OpenSystemsLab";
  inputs.src-sam-0_1_7.ref   = "refs/tags/0.1.7";
  inputs.src-sam-0_1_7.repo  = "sam.nim";
  inputs.src-sam-0_1_7.type  = "github";
  
  inputs."jsmn".owner = "nim-nix-pkgs";
  inputs."jsmn".ref   = "master";
  inputs."jsmn".repo  = "jsmn";
  inputs."jsmn".type  = "github";
  inputs."jsmn".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sam-0_1_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sam-0_1_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}