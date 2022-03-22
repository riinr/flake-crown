{
  description = ''System libraries for the Genode Operating System Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-genode-v20_11.flake = false;
  inputs.src-genode-v20_11.owner = "~ehmry";
  inputs.src-genode-v20_11.ref   = "v20_11";
  inputs.src-genode-v20_11.repo  = "nim_genode";
  inputs.src-genode-v20_11.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-genode-v20_11"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-genode-v20_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}