{
  description = ''Erlang/Elixir NIFs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimler-v3_1.flake = false;
  inputs.src-nimler-v3_1.owner = "wltsmrz";
  inputs.src-nimler-v3_1.ref   = "v3_1";
  inputs.src-nimler-v3_1.repo  = "nimler";
  inputs.src-nimler-v3_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimler-v3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimler-v3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}