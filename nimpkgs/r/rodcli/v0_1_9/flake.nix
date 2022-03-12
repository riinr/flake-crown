{
  description = ''making Nim development easier in the command-line'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rodcli-v0_1_9.flake = false;
  inputs.src-rodcli-v0_1_9.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_9.ref   = "refs/tags/v0.1.9";
  inputs.src-rodcli-v0_1_9.repo  = "NimCliHelper";
  inputs.src-rodcli-v0_1_9.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rodcli-v0_1_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rodcli-v0_1_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}