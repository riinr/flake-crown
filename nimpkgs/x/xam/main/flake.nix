{
  description = ''xam'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xam-main.flake = false;
  inputs.src-xam-main.owner = "j-a-s-d";
  inputs.src-xam-main.ref   = "refs/heads/main";
  inputs.src-xam-main.repo  = "xam";
  inputs.src-xam-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xam-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xam-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}