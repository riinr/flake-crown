{
  description = ''implements macro creates toInterface proc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-interface_implements-main.flake = false;
  inputs.src-interface_implements-main.owner = "itsumura-h";
  inputs.src-interface_implements-main.ref   = "refs/heads/main";
  inputs.src-interface_implements-main.repo  = "nim-interface-implements";
  inputs.src-interface_implements-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-interface_implements-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-interface_implements-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}