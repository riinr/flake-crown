{
  description = ''System libraries for the Genode Operating System Framework'';
  inputs.src-genode-v18_11_0.flake = false;
  inputs.src-genode-v18_11_0.type = "other";
  inputs.src-genode-v18_11_0.owner = "~ehmry";
  inputs.src-genode-v18_11_0.repo = "nim_genode";
  inputs.src-genode-v18_11_0.ref = "refs/tags/v18.11.0";
  
  outputs = { self, nixpkgs, src-genode-v18_11_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v18_11_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genode-v18_11_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}