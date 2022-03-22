{
  description = ''Erlang/Elixir NIFs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimler-v4_2.flake = false;
  inputs.src-nimler-v4_2.owner = "wltsmrz";
  inputs.src-nimler-v4_2.ref   = "v4_2";
  inputs.src-nimler-v4_2.repo  = "nimler";
  inputs.src-nimler-v4_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimler-v4_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimler-v4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}