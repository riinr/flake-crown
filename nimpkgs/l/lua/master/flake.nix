{
  description = ''Wrapper to interface with the Lua interpreter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lua-master.flake = false;
  inputs.src-lua-master.ref   = "refs/heads/master";
  inputs.src-lua-master.owner = "nim-lang";
  inputs.src-lua-master.repo  = "lua";
  inputs.src-lua-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lua-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lua-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}