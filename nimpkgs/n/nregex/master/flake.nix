{
  description = ''A DFA based regex engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nregex-master.flake = false;
  inputs.src-nregex-master.owner = "nitely";
  inputs.src-nregex-master.ref   = "refs/heads/master";
  inputs.src-nregex-master.repo  = "nregex";
  inputs.src-nregex-master.type  = "github";
  
  inputs."unicodedb".owner = "nim-nix-pkgs";
  inputs."unicodedb".ref   = "master";
  inputs."unicodedb".repo  = "unicodedb";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus".owner = "nim-nix-pkgs";
  inputs."unicodeplus".ref   = "master";
  inputs."unicodeplus".repo  = "unicodeplus";
  inputs."unicodeplus".type  = "github";
  inputs."unicodeplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nregex-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nregex-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}